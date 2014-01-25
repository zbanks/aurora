#include "hal.h"
#include "stm32f0xx.h"
#include <string.h>

#define GPIO_Pin_LED GPIO_Pin_3
#define GPIO_Pin_BUTTON GPIO_Pin_4
#define GPIO_Pin_V_LED GPIO_Pin_0
#define GPIO_Pin_I_LED GPIO_Pin_6
#define GPIO_Pin_STRIP_DAT GPIO_Pin_5
#define GPIO_Pin_STRIP_CLK GPIO_Pin_3
#define GPIO_Pin_UART_TX GPIO_Pin_9
#define GPIO_Pin_UART_RX GPIO_Pin_10
#define GPIO_Pin_UART_RTS GPIO_Pin_12
#define GPIO_PinSource_STRIP_DAT GPIO_PinSource5
#define GPIO_PinSource_STRIP_CLK GPIO_PinSource3
#define GPIO_PinSource_UART_TX GPIO_PinSource9
#define GPIO_PinSource_UART_RX GPIO_PinSource10
#define GPIO_PinSource_UART_RTS GPIO_PinSource12
#define ADC_Channel_V_LED ADC_Channel_0
#define ADC_Channel_I_LED ADC_Channel_6
#define USART_TX_BUF_SIZE 100
#define USART_RX_BUF_SIZE 100

#define STRIP_MEMORY_SIZE (2+STRIP_PIXELS+(STRIP_PIXELS/16))
uint16_t strip_memory[STRIP_MEMORY_SIZE];
uint16_t* const strip_data=strip_memory+2;

uint8_t usart_tx_buffer[USART_TX_BUF_SIZE];
int16_t usart_rx_buffer_ptr=0;
uint8_t usart_rx_buffer[USART_RX_BUF_SIZE];

uint8_t usart_not_first;

void init()
{
  GPIO_InitTypeDef GPIO_InitStructure;
  USART_InitTypeDef USART_InitStructure;
  ADC_InitTypeDef ADC_InitStructure;
  SPI_InitTypeDef SPI_InitStructure;
  DMA_InitTypeDef DMA_InitStructure;
  
  // Clocks
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA | RCC_AHBPeriph_GPIOB | RCC_AHBPeriph_DMA1, ENABLE);
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1 |
                         RCC_APB2Periph_SPI1 |
                         RCC_APB2Periph_USART1 |
                         RCC_APB2Periph_SYSCFG, ENABLE);

  // GPIO - Indicator
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_LED;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  // GPIO - Button
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_BUTTON;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
  GPIO_Init(GPIOA, &GPIO_InitStructure);
  
  // GPIO - SPI to Strip
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_STRIP_DAT | GPIO_Pin_STRIP_CLK;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
  GPIO_InitStructure.GPIO_OType = GPIO_OType_OD;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_Init(GPIOB, &GPIO_InitStructure);

  GPIO_PinAFConfig(GPIOB, GPIO_PinSource_STRIP_DAT, GPIO_AF_0);
  GPIO_PinAFConfig(GPIOB, GPIO_PinSource_STRIP_CLK, GPIO_AF_0);

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

  // GPIO - Voltage / Current Sensing
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_V_LED | GPIO_Pin_I_LED;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AN;
  GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  // ADC - Voltage / Current Sensing
  ADC_DeInit(ADC1);
  ADC_StructInit(&ADC_InitStructure);
  ADC_Init(ADC1, &ADC_InitStructure);

  ADC_GetCalibrationFactor(ADC1);
  ADC_VrefintCmd(ENABLE);
  ADC_Cmd(ADC1, ENABLE);
  while(!ADC_GetFlagStatus(ADC1, ADC_FLAG_ADRDY));

  // SPI
  SPI_StructInit(&SPI_InitStructure);
  SPI_InitStructure.SPI_Direction = SPI_Direction_1Line_Tx;
  SPI_InitStructure.SPI_Mode = SPI_Mode_Master;
  SPI_InitStructure.SPI_CPOL = SPI_CPOL_Low;
  SPI_InitStructure.SPI_CPHA = SPI_CPHA_1Edge;
  SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;
  SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_32;
  SPI_InitStructure.SPI_DataSize = SPI_DataSize_16b;
  SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;
  SPI_Init(SPI1, &SPI_InitStructure);
  SPI_Cmd(SPI1, ENABLE);

  // USART
  USART_DeInit(USART1);
  USART_StructInit(&USART_InitStructure);

  USART_InitStructure.USART_BaudRate = USART_BAUD_RATE;
  USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_RTS;
  USART_Init(USART1, &USART_InitStructure);
  USART_Cmd(USART1, ENABLE);

  // Strip Memory
  strip_memory[0]=0x0000;
  strip_memory[1]=0x0000;
  for(int i=0;i<STRIP_PIXELS/16;i++)
  {
    strip_memory[2+STRIP_PIXELS+i]=0xFFFF;
  }
  
  // DMA - SPI
  DMA_DeInit(DMA1_Channel3);
  DMA_InitStructure.DMA_PeripheralBaseAddr = (uint32_t)(&(SPI1->DR));
  DMA_InitStructure.DMA_MemoryBaseAddr = (uint32_t)strip_memory;
  DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralDST;
  DMA_InitStructure.DMA_BufferSize = 1; // Set later, non-zero here to set TC flag
  DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
  DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
  DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
  DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
  DMA_InitStructure.DMA_Mode = DMA_Mode_Normal;
  DMA_InitStructure.DMA_Priority = DMA_Priority_High;
  DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
  DMA_Init(DMA1_Channel3, &DMA_InitStructure);
  SPI_I2S_DMACmd(SPI1, SPI_I2S_DMAReq_Tx, ENABLE);
  DMA_Cmd(DMA1_Channel3, ENABLE);

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
}

void set_led(uint8_t state)
{
  GPIO_WriteBit(GPIOA, GPIO_Pin_LED, state);
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

uint8_t get_button()
{
  return !GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_BUTTON);
}

uint16_t get_voltage()
{
  uint16_t vref;
  ADC_ChannelConfig(ADC1, ADC_Channel_Vrefint, ADC_SampleTime_239_5Cycles);
  ADC_StartOfConversion(ADC1);
  while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == RESET);
  vref=ADC_GetConversionValue(ADC1);

  ADC_ChannelConfig(ADC1, ADC_Channel_V_LED , ADC_SampleTime_239_5Cycles);
  ADC_StartOfConversion(ADC1);
  while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == RESET);
  return ADC_GetConversionValue(ADC1)*6840/vref; // magic number to get millivolts
}

uint16_t get_current()
{
  uint16_t vref;
  ADC_ChannelConfig(ADC1, ADC_Channel_Vrefint, ADC_SampleTime_239_5Cycles);
  ADC_StartOfConversion(ADC1);
  while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == RESET);
  vref=ADC_GetConversionValue(ADC1);

  ADC_ChannelConfig(ADC1, ADC_Channel_I_LED , ADC_SampleTime_239_5Cycles);
  ADC_StartOfConversion(ADC1);
  while(ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == RESET);
  return ADC_GetConversionValue(ADC1)*1200/vref; // magic number to get milliamps
}

void strip_write(uint16_t word)
{
  while (SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_TXE) == RESET); // Wait while transmit is full
  SPI_I2S_SendData16(SPI1, word);
}

void strip_flush()
{
  while (SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_TXE) == SET); // While transmit is busy
}

// Pack three 5 bit colors into a 16 bit pixel value
uint16_t pack_RGB(uint8_t red, uint8_t green, uint8_t blue)
{
  return STRIP_BLACK | (((blue & 0x1F) >>1) << 10) | ((red & 0x1F) << 5) | ((green & 0x1F));
}

// Write out strip from memory
void strip_refresh()
{
  while(!DMA_GetFlagStatus(DMA1_FLAG_TC3)); // Wait for previous refresh to complete
  DMA_Cmd(DMA1_Channel3, DISABLE);
  DMA_ClearFlag(DMA1_FLAG_TC3);
  DMA_SetCurrDataCounter(DMA1_Channel3,STRIP_MEMORY_SIZE);
  DMA_Cmd(DMA1_Channel3, ENABLE);
}
