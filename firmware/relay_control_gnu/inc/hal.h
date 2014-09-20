#include <stdint.h>

#define USART_BAUD_RATE 115200
//#define USART_BAUD_RATE 3000000

void init();

void send_str(uint8_t* mem,uint16_t cnt);
int16_t get_char();

void set_relay(uint8_t port, uint8_t state);
