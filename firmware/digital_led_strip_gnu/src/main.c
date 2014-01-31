#include "hal.h"
#include <stdint.h>
#include "bespeckle.h"
#include "lux.h"
//#include "dmx.h"

const char a[]="UUUUUUUUUUUUUU";

uint8_t uart_buffer[10];
uint8_t uart_idx = 0;

#define STRIP_LENGTH (STRIP_PIXELS)


int main(void)
{
  static int16_t a;
  uint8_t btn;
  int16_t ser;
  uint8_t k = 0;
  canpacket_t msg1 = {0x03, 'a', {0x80, 20, 30, 0x00, 0x00, 0x00}};
  canpacket_t msg_tick = {CMD_TICK, 0, {0, 0, 0, 0, 0, 0}};
  message(&msg1);
  message(&msg_tick);
  
  init();
  init_effects_heap();
  for(int i=0;i<STRIP_LENGTH;i++){
    strip_data[i]=pack_RGB(5,0,0);
}
    strip_refresh();
    populate_strip(strip_data);
    strip_refresh();
  while(1)
  {
    luxframe_t* luxframe;
    int sum = 0;


    luxframe = lux_usart_poll();
    set_led(0);
    if(luxframe){
        if(luxframe->address == 0x00){
            //Example
        }
        if(luxframe->length >= 8){
            message(luxframe->data);
            if(luxframe->data[0] & 0x80){
                set_led(1);
                populate_strip(strip_data); 
                strip_refresh();
            }else{
            }
        }
    }
    /*
    message(&msg_tick);
    compose_all(effects, strip_data); 
    */
    
    //btn=get_button();
    //set_led(btn);
    //poll_usart();
    //send_str(a, 10);
    

    /*
    if(btn)
    {
      for(int i=0;i<STRIP_LENGTH;i++)
        strip_data[i]=pack_RGB(0,15,5);
    }
    else
    {
      //for(int i=0;i<STRIP_LENGTH;i++){
        //strip_data[i]=pack_RGB(5,0,5);
     // for(long i=1;i < 100000;i++){
        //strip_data[i]=pack_RGB(0,0,0);
      //}
    }
    //strip_refresh();
    */
    strip_refresh_nowait();
  }
}

#ifdef  USE_FULL_ASSERT

void assert_failed(uint8_t* file, uint32_t line)
{ 
  while (1)
  {
  }
}

#endif
