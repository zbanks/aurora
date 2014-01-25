#include <stdint.h>

#define STRIP_BLACK 0x8000
#define STRIP_PIXELS 50

extern uint16_t* const strip_data;

void init();
void set_led(uint8_t state);
uint8_t get_button();

uint16_t get_voltage();
uint16_t get_current();

void strip_flush();
uint16_t pack_RGB(uint8_t red, uint8_t green, uint8_t blue);
void strip_refresh();
void send_str(uint8_t* mem,uint16_t cnt);
int16_t get_char();
