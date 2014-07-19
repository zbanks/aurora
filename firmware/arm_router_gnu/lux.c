#include <stdint.h>
#include "lux.h"
#include "string.h"


#define LUXFRAME_IDLE       (-2)
#define LUXFRAME_FIRSTZ     (-1)

uint8_t crc_add_byte(uint8_t x, uint8_t acc){
    //TODO
    return acc + x;
}

void lux_calculate_crc(luxframe_t* lframe){
    uint8_t* ptr = ((uint8_t *)lframe)+2;
    int i;
    int length = lframe->length + 2;
    if(length > LUX_MAX_FRAME_SIZE + 2){
        length = LUX_MAX_FRAME_SIZE + 2;
    }

    lframe->crc = 0;
    for(i = 0; i < length; i++){
        lframe->crc = crc_add_byte(ptr[i], lframe->crc);
    }
}

void lux_serialize(luxframe_t* lframe, uint8_t* buffer){
    /* Dump lux frame into buffer for transmission */
    int i;
    uint8_t d = 1;
    int length = lframe->length;

    if(length > LUX_MAX_FRAME_SIZE){
        length = LUX_MAX_FRAME_SIZE;
    }

    buffer[0] = 0;
    buffer[1] = 0;
    memcpy(buffer+2, lframe, length + 4);
    // Perform COBS encoding
    i = length + 5;
    while(i > 1){
        if(buffer[i] == 0){
            buffer[i] = d;
            d = 0;
        }
        i--;
        d++;
    }
    buffer[1] = d;
}

luxframe_t* lux_usart_poll(uint8_t data){
    /* Poll usart, reading up to a full lux frame
     * Data encoded with COBS:
     *  Byte 0: 0x00
     *  Byte 1: COBS position of next 0x00 [1-255]
     *  Byte 2: Length of data packet (L) 
     *  Byte (6+L): CRC8 Checksum
     *  Byte 3: Address 
     *  Byte 4: Flags (unused)
     *  Byte 5 to (5+L): Data
     *
     * Return length of frame if available, otherwise -1
     */
    static luxframe_t lux_frame;
    static int16_t lux_frame_idx = LUXFRAME_IDLE;
    static int16_t lux_frame_crc = 0;
    static uint8_t lux_frame_nextzero;
    //int16_t data;
    //while((data = get_char()) != -1){
    //set_led(1);
    // Start of frame
    if(data == 0){
        // Next byte is the position of the first zero (COBS)
        lux_frame_idx = LUXFRAME_FIRSTZ;
        // Reset the CRC counter
        lux_frame_crc = 0; 
        return NULL;
    }

    // Currently not syncronized with a frame
    if(lux_frame_idx == LUXFRAME_IDLE){
        return NULL;
    }

    // Read in Byte 1: the zero position
    if(lux_frame_idx == LUXFRAME_FIRSTZ){
        // Next byte is the length of the frame data
        lux_frame_idx = 0;
        // Position of the first zero byte
        lux_frame_nextzero = data;
        return NULL;
    }

    // Decrement distance to next zero for COBS encoding
    lux_frame_nextzero--;
    // Recode zeros with COBS encoding
    if(lux_frame_nextzero == 0){
        lux_frame_nextzero = data;
        data = 0;
    }

    // Feed the CRC calculator, skipping length & CRC bytes
    if(lux_frame_idx >= 2){
        lux_frame_crc = crc_add_byte(data, lux_frame_crc);
    }

    // Byte is part of data frame
    *(((uint8_t *) &lux_frame) + lux_frame_idx++) = data;

    // The data is all recieved
    if(lux_frame_idx >= (lux_frame.length + 4)){
        // Compare calcualted CRC with incoming byte
        if(lux_frame_crc == data || 1){
            // Return length of buffer
            return &lux_frame;
        }
        //set_led(lux_frame_crc == data);
        // Go idle: no longer reading a frame
        lux_frame_idx = LUXFRAME_IDLE;
    }

    // The data will overflow the buffer. Stop parsing
    if(lux_frame_idx >= LUX_MAX_FRAME_SIZE + 4){
        lux_frame_idx = LUXFRAME_IDLE;
        return NULL;
    }

    //set_led(0);
    return NULL; // Frame not complete
}

