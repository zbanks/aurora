#include "hal.h"
#include "stm32f0xx.h"
#include <string.h>

#define GPIO_Pin_UART_TX GPIO_Pin_9
#define GPIO_Pin_UART_RX GPIO_Pin_10
#define GPIO_Pin_UART_RTS GPIO_Pin_12
#define GPIO_PinSource_UART_TX GPIO_PinSource9
#define GPIO_PinSource_UART_RX GPIO_PinSource10
#define GPIO_PinSource_UART_RTS GPIO_PinSource12

#define USART_TX_BUF_SIZE 64
#define USART_RX_BUF_SIZE 2048


uint8_t usart_tx_buffer[USART_TX_BUF_SIZE];
int16_t usart_rx_buffer_ptr=0;
uint8_t usart_rx_buffer[USART_RX_BUF_SIZE];

uint8_t usart_not_first;

#define NUM_RELAYS 16

uint32_t relay_config[NUM_RELAYS][2] = {
    {GPIOA, GPIO_Pin_0}, // 0
    {GPIOA, GPIO_Pin_1}, // 1
    {GPIOA, GPIO_Pin_2}, // 2
    {GPIOA, GPIO_Pin_3}, // 3
    {GPIOA, GPIO_Pin_4}, // 4
    {GPIOA, GPIO_Pin_5}, // 5
    {GPIOA, GPIO_Pin_6}, // 6
    {GPIOA, GPIO_Pin_7}, // 7
    {GPIOB, GPIO_Pin_0}, // 8
    {GPIOB, GPIO_Pin_1}, // 9
    {GPIOB, GPIO_Pin_2}, // 10
    {GPIOB, GPIO_Pin_3}, // 11
    {GPIOB, GPIO_Pin_4}, // 12
    {GPIOB, GPIO_Pin_5}, // 13
    {GPIOB, GPIO_Pin_6}, // 14
    {GPIOB, GPIO_Pin_7}, // 15
};

void init()
{
  int i;
//AFIO->MAPR |= AFIO_MAPR_SPI1_REMAP;
//AFIO->MAPR |= AFIO_MAPR_SWJ_CFG_JTAGDISABLE;
  GPIO_InitTypeDef GPIO_InitStructure;
  USART_InitTypeDef USART_InitStructure;
  DMA_InitTypeDef DMA_InitStructure;
  
  // Clocks
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA | RCC_AHBPeriph_GPIOB | RCC_AHBPeriph_DMA1, ENABLE);
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1 |
                         RCC_APB2Periph_SPI1 |
                         RCC_APB2Periph_USART1 |
                         RCC_APB2Periph_SYSCFG, ENABLE);

  // GPIO - Indicator
  for(i = 0; i < NUM_RELAYS; i++){
    GPIO_InitStructure.GPIO_Pin = relay_config[i][1];
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
    GPIO_Init(relay_config[i][0], &GPIO_InitStructure);
  }

  // GPIO - USART
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_UART_TX | GPIO_Pin_UART_RX | GPIO_Pin_UART_RTS;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  GPIO_PinAFConfig(GPIOA, GPIO_PinSource_UART_TX, GPIO_AF_1);
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource_UART_RX, GPIO_AF_1);
  GPIO_PinAFConfig(GPIOA, GPIO_PinSource_UART_RTS, GPIO_AF_1);

  // USART
  USART_DeInit(USART1);
  //USART_OverSampling8Cmd(USART1, ENABLE); // Enable 8x oversampling: turbo mode!
  USART_StructInit(&USART_InitStructure);

  USART_InitStructure.USART_BaudRate = USART_BAUD_RATE;
  USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_RTS;
  USART_Init(USART1, &USART_InitStructure);
  USART_Cmd(USART1, ENABLE);

  // DMA - USART TX
  SYSCFG_DMAChannelRemapConfig(SYSCFG_DMARemap_USART1Tx,ENABLE);
  DMA_DeInit(DMA1_Channel4);
  DMA_InitStructure.DMA_PeripheralBaseAddr = (uint32_t)(&(USART1->TDR));
  DMA_InitStructure.DMA_MemoryBaseAddr = (uint32_t)usart_tx_buffer;
  DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralDST;
  DMA_InitStructure.DMA_BufferSize = 1;
  DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
  DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
  DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
  DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
  DMA_InitStructure.DMA_Mode = DMA_Mode_Normal;
  DMA_InitStructure.DMA_Priority = DMA_Priority_High;
  DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
  DMA_Init(DMA1_Channel4, &DMA_InitStructure);
  USART_DMACmd(USART1, USART_DMAReq_Tx, ENABLE);
  usart_not_first=0;

  // DMA - USART RX
  SYSCFG_DMAChannelRemapConfig(SYSCFG_DMARemap_USART1Rx,ENABLE);
  DMA_DeInit(DMA1_Channel5);
  DMA_InitStructure.DMA_PeripheralBaseAddr = (uint32_t)(&(USART1->RDR));
  DMA_InitStructure.DMA_MemoryBaseAddr = (uint32_t)usart_rx_buffer;
  DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;
  DMA_InitStructure.DMA_BufferSize = USART_RX_BUF_SIZE;
  DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
  DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
  DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Byte;
  DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
  DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;
  DMA_InitStructure.DMA_Priority = DMA_Priority_High;
  DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
  DMA_Init(DMA1_Channel5, &DMA_InitStructure);
  USART_DMACmd(USART1, USART_DMAReq_Rx, ENABLE);
  DMA_Cmd(DMA1_Channel5, ENABLE);

  //set_rts(0);
}

void set_rts(uint8_t state)
{
  GPIO_WriteBit(GPIOA, GPIO_Pin_UART_RTS, state);
}   


void send_str(uint8_t* mem,uint16_t cnt)
{
  memcpy(usart_tx_buffer,mem,cnt);
  while(!DMA_GetFlagStatus(DMA1_FLAG_TC4) && usart_not_first); // Wait for previous transmission to complete
  DMA_Cmd(DMA1_Channel4, DISABLE);
  DMA_ClearFlag(DMA1_FLAG_TC4);
  DMA_SetCurrDataCounter(DMA1_Channel4,cnt);
  DMA_Cmd(DMA1_Channel4, ENABLE);
  usart_not_first=1; 
}

int16_t get_char()
{
  uint8_t out;
  uint16_t cur_slot=USART_RX_BUF_SIZE-DMA_GetCurrDataCounter(DMA1_Channel5);
  if(cur_slot == usart_rx_buffer_ptr)
  {
    return -1;
  }
  out=usart_rx_buffer[usart_rx_buffer_ptr];
  usart_rx_buffer_ptr++;
  if(usart_rx_buffer_ptr == USART_RX_BUF_SIZE)
  {
    usart_rx_buffer_ptr=0;
  }
  return out;
}

int16_t get_char_size()
{
    int16_t cur_slot = USART_RX_BUF_SIZE - DMA_GetCurrDataCounter(DMA1_Channel5);
    if(cur_slot <= usart_rx_buffer_ptr){
        return usart_rx_buffer_ptr - cur_slot;
    }else{
        return (usart_rx_buffer_ptr + USART_RX_BUF_SIZE) - cur_slot;
    }
}

void set_relay(uint8_t port, uint8_t state){
    if(port < NUM_RELAYS){
        GPIO_WriteBit(relay_config[port][0], relay_config[port][1], state);
    }
}
