#include "hal.h"
#include <stdint.h>
//#include <bespeckle.h>
#include "dmx.h"

//const char a[]="Hello\r\n";

#define STRIP_LENGTH (STRIP_PIXELS)

int main(void)
{
  static int16_t a;
  uint8_t btn;
  int16_t ser;
  /*
  canpacket_t msg1 = {0x03, 'a', {0x80, 2, 3, 0x00, 0x00, 0x00}};
  canpacket_t msg_tick = {CMD_TICK, 0, {0, 0, 0, 0, 0, 0}};
  message(&msg1);
  */
  
  init();
  for(int i=0;i<STRIP_LENGTH;i++)
    strip_data[i]=pack_RGB(0,0,0);
  while(1)
  {
    /*
    message(&msg_tick);
    compose_all(effects, strip_data); 
    */
    
    btn=get_button();
    set_led(btn);
    poll_usart();
    

    if(btn)
    {
      for(int i=0;i<STRIP_LENGTH;i++)
        strip_data[i]=pack_RGB(0,15,15);
    }
    else
    {
      for(int i=0;i<STRIP_LENGTH;i++){
        //strip_data[i]=pack_RGB(5,0,5);
     // for(long i=1;i < 100000;i++){
        //strip_data[i]=pack_RGB(0,0,0);
      }
    }
    strip_refresh();
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
