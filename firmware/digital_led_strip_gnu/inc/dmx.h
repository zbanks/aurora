#include <hal.h>
#ifndef __DMX_H__
#define __DMX_H__

#define DMX_ADDRESS_START (0)
#define DMX_ADDRESS_END   (0+(STRIP_PIXELS*3))

#define DMX_FRAME_START 0x7E
#define DMX_FRAME_END 0xE7

void set_channel_value(uint16_t channel, uint8_t value);
void poll_usart(void);

#endif /* __DMX_H__ */
