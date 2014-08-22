#include "hal.h"
#include <stdint.h>
#include "bespeckle.h"
#include "lux.h"
//#include "dmx.h"

#define STRIP_LENGTH (STRIP_PIXELS)
#define DEVICE_ADDRESS      (0x80)
#define DEVICE_ADDRESS_MASK (0x80)

//#define MODE_BESPECKLE

#ifdef MODE_BESPECKLE
#undef MODE_DMX
#else
#define MODE_DMX
#endif

#define MAX(a, b) ((a > b) ? a : b)
#define MIN(a, b) ((a < b) ? a : b)

int main(void) {
    char a[] = "aaa\n";

    init();
    for(int i=0;i<STRIP_LENGTH;i++){
        strip_data[i]=pack_RGB(2,0,0);
    }

    #ifdef MODE_BESPECKLE
        canpacket_t msg1 = {0x03, 'a', {0x80, 20, 30, 0x00, 0x00, 0x00}};
        canpacket_t msg_tick = {CMD_TICK, 0, {0, 0, 0, 0, 0, 0}};
        message(&msg1);
        message(&msg_tick);

        init_effects_heap();
        for(int i=0;i<STRIP_LENGTH;i++){
            strip_data[i]=pack_RGB(0,0,5);
        }
        strip_refresh();
        populate_strip(strip_data);
        strip_refresh();
    #endif

    #ifdef MODE_DMX
        for(int i=0;i<STRIP_LENGTH;i++){
            strip_data[i]=pack_RGB(0,3,0);
        }
        strip_refresh();
    #endif
    while(1) {
        luxframe_t* luxframe;

        luxframe = lux_usart_poll();
        if(luxframe){
            if((luxframe->address & DEVICE_ADDRESS_MASK) == (DEVICE_ADDRESS & DEVICE_ADDRESS_MASK)){
                set_led(luxframe->address & 1);
                //Example
                #ifdef MODE_BESPECKLE
                if(luxframe->length >= 8){
                    message(luxframe->data);
                    if(luxframe->data[0] & 0x80){
                        set_led(1);
                        populate_strip(strip_data); 
                        strip_refresh();
                    }else{
                    }
                }
                #endif

                #ifdef MODE_DMX
                //set_led(1);
                memcpy(strip_data, luxframe->data, MIN(STRIP_LENGTH * 2, luxframe->length));
                strip_refresh();
                #endif
            }
        }
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
