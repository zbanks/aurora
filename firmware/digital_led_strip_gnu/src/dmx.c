#include <dmx.h>
#include <hal.h>

int16_t dmx_state = -1;
uint16_t dmx_next_channel = 0;
uint16_t dmx_num_channels;

void set_channel_value(uint16_t channel, uint8_t value){
    uint16_t pixel;
    uint8_t color;
    uint8_t offset;

    if((channel < DMX_ADDRESS_START) || (channel > DMX_ADDRESS_END)){
        return;
    }
    channel -= DMX_ADDRESS_START;
    pixel = channel / 3;
    color = channel % 3;

    switch(color){
        case 0: // Red
            offset = 5;
        break;
        case 1: // Green
            offset = 0;
        break;
        case 2: // Blue
        default:
            offset = 10;
        break;
    }
    strip_data[pixel] &= ~(0x1F << offset);
    strip_data[pixel] |= ((uint16_t) (value >> 3) & 0x1F) << offset;
}

void poll_usart(){
    int16_t data;
    static uint8_t s = 0;
    while((data = get_char()) != -1){
        switch(dmx_state){
            case -1:
                if(data == DMX_FRAME_START){
                    dmx_state++;
                }else{
                    set_led(s);
                    s ^= 1;
                }
            break;
            case 0: 
                // Ignore this byte
                dmx_state++;
                dmx_next_channel = 0;
            break;
            case 1: 
                dmx_num_channels = (uint16_t) data;
                dmx_state++;
            break;
            case 2: 
                dmx_num_channels |= ((uint16_t) data) << 8;
                dmx_state++;
            break;
            case 3:
                set_channel_value(dmx_next_channel, data);
                dmx_next_channel++;
                if(dmx_next_channel >= dmx_num_channels){
                    dmx_state = 4;
                }
            break;
            case 4:
            default:
                // this should just be DMX_FRAME_END
                dmx_state = -1;
            break;
        }
        strip_refresh_nowait();
    }
}
