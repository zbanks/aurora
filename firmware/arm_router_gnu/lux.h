#include <stdint.h>

#define LUX_MAX_FRAME_SIZE 32

#ifndef NULL
#define NULL 0
#endif

extern uint8_t lux_frame[];

typedef struct {
    uint8_t length;
    uint8_t crc;
    uint8_t address;
    uint8_t flags;
    uint8_t data[LUX_MAX_FRAME_SIZE];
} luxframe_t;

luxframe_t* lux_usart_poll(uint8_t);
void lux_serialize(luxframe_t*, uint8_t*);
void lux_calculate_crc(luxframe_t*);

