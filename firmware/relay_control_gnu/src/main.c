#include "hal.h"
#include <stdint.h>
#include "lux.h"


#ifndef DEVICE_ADDRESS
#define DEVICE_ADDRESS      (0x30)
#endif

#define DEVICE_ADDRESS_MASK (0x80)


int main(void) {
    int i;
    uint8_t port, state;

    init();

    while(1) {
        luxframe_t* luxframe;

        luxframe = lux_usart_poll();
        if(luxframe){
            if((luxframe->address & luxframe->flags) == (DEVICE_ADDRESS & luxframe->flags)){
                for(i = 0; i < luxframe->length; i++){
                    port = (luxframe->data[i] & 0xF0) >> 4;
                    state = luxframe->data[i] & 0x1;
                    set_relay(port, state);
                }
            }
        }
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
