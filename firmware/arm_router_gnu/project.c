//*****************************************************************************
//
// project.c - Simple project to use as a starting point for more complex
//             projects.
//
// Copyright (c) 2013 Texas Instruments Incorporated.  All rights reserved.
// Software License Agreement
// 
//   Redistribution and use in source and binary forms, with or without
//   modification, are permitted provided that the following conditions
//   are met:
// 
//   Redistributions of source code must retain the above copyright
//   notice, this list of conditions and the following disclaimer.
// 
//   Redistributions in binary form must reproduce the above copyright
//   notice, this list of conditions and the following disclaimer in the
//   documentation and/or other materials provided with the  
//   distribution.
// 
//   Neither the name of Texas Instruments Incorporated nor the names of
//   its contributors may be used to endorse or promote products derived
//   from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
// 
// This is part of revision 2.0.1.11577 of the Tiva Firmware Development Package.
//
//*****************************************************************************

#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_ints.h"
#include "inc/hw_memmap.h"
#include "inc/hw_sysctl.h"
#include "inc/hw_types.h"
#include "inc/hw_gpio.h"
#include "driverlib/debug.h"
#include "driverlib/gpio.h"
#include "driverlib/interrupt.h"
#include "driverlib/pin_map.h"
#include "driverlib/rom.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"

#include "lux.h"

#define GPIO_LOCK_KEY_DD        0x4C4F434B
//*****************************************************************************
//
//! \addtogroup example_list
//! <h1>Simple Project (project)</h1>
//!
//! A very simple example that can be used as a starting point for more complex
//! projects.  Most notably, this project is fully TI BSD licensed, so any and
//! all of the code (including the startup code) can be used as allowed by that
//! license.
//!
//! The provided code simply toggles a GPIO using the Tiva Peripheral Driver
//! Library.
//
//*****************************************************************************

//*****************************************************************************
//
// The error routine that is called if the driver library encounters an error.
//
//*****************************************************************************
#ifdef DEBUG
void
__error__(char *pcFilename, uint32_t ui32Line)
{
}
#endif

void DownstreamUARTIntHandler(uint32_t uBase){

}

void UART0IntHandler(void){
    DownstreamUARTIntHandler(UART0_BASE);
}
void UART2IntHandler(void){
    DownstreamUARTIntHandler(UART2_BASE);
}
void UART3IntHandler(void){
    DownstreamUARTIntHandler(UART3_BASE);
}
void UART4IntHandler(void){
    DownstreamUARTIntHandler(UART4_BASE);
}
void UART5IntHandler(void){
    DownstreamUARTIntHandler(UART5_BASE);
}
void UART6IntHandler(void){
    DownstreamUARTIntHandler(UART6_BASE);
}
void UART7IntHandler(void){
    DownstreamUARTIntHandler(UART7_BASE);
}

void UARTSend(uint32_t uBase, const uint8_t *pui8Buffer, uint32_t ui32Count) {
    // Loop while there are more characters to send.
    while(ui32Count--)
    {
        // Write the next character to the UART.
        ROM_UARTCharPutNonBlocking(uBase, *pui8Buffer++);
    }
}

void UpstreamUARTIntHandler(void) {
    uint32_t ui32Status;
    uint8_t data;
    static luxframe_t* lframe;
    static uint8_t lbuffer[LUX_MAX_FRAME_SIZE + 8];

    // Get the interrrupt status.
    ui32Status = ROM_UARTIntStatus(UART1_BASE, true);
    // Clear the asserted interrupts.
    ROM_UARTIntClear(UART1_BASE, ui32Status);
    // Loop while there are characters in the receive FIFO.
    while(ROM_UARTCharsAvail(UART1_BASE)){
        data = ROM_UARTCharGetNonBlocking(UART1_BASE);
        // Read the next character from the UART and write it back to the UART.
        //ROM_UARTCharPutNonBlocking(UART1_BASE, data);
        // Update lux framing
        lframe = lux_usart_poll(data);
        if(lframe){
            lux_calculate_crc(lframe);
            lux_serialize(lframe, lbuffer);
            //UARTSend(UART0_BASE, lbuffer, lframe->length + 6);
            //UARTSend(UART1_BASE, lbuffer, lframe->length + 6);
            //UARTSend(UART2_BASE, lbuffer, lframe->length + 6);
            //UARTSend(UART3_BASE, lbuffer, lframe->length + 6);
            //UARTSend(UART4_BASE, lbuffer, lframe->length + 6);
            UARTSend(UART5_BASE, lbuffer, lframe->length + 6);
            //UARTSend(UART6_BASE, lbuffer, lframe->length + 6);
            //UARTSend(UART7_BASE, lbuffer, lframe->length + 6);
        }
        // Blink the LED to show a character transfer is occuring.
        GPIOPinWrite(GPIO_PORTB_BASE, GPIO_PIN_6, GPIO_PIN_6);
        // Delay for 1 millisecond.  Each SysCtlDelay is about 3 clocks.
        SysCtlDelay(SysCtlClockGet() / (1000 * 3));
        // Turn off the LED
        GPIOPinWrite(GPIO_PORTB_BASE, GPIO_PIN_6, 0);
    }
}


//*****************************************************************************
//
// Toggle a GPIO.
//
//*****************************************************************************
int
main(void)
{
    // Enable lazy stacking for interrupt handlers.  This allows floating-point
    // instructions to be used within interrupt handlers, but at the expense of
    // extra stack usage.
    //ROM_FPUEnable();
    //ROM_FPULazyStackingEnable();
    // Set the clocking to run directly from the crystal.
    //ROM_SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC | SYSCTL_OSC_MAIN | SYSCTL_XTAL_16MHZ);

    //
    // Enable the peripherals used by this example.
    //
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_UART1);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_UART2);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_UART3);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_UART4);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_UART5);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_UART6);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_UART7);

    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOC);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOD);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOE);
    //ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

    // Enable processor interrupts.
    ROM_IntMasterEnable();

    ROM_GPIOPinTypeGPIOOutput(GPIO_PORTA_BASE, GPIO_PIN_5); 
    ROM_GPIOPinTypeGPIOOutput(GPIO_PORTB_BASE, GPIO_PIN_6); 
    ROM_GPIOPinTypeGPIOOutput(GPIO_PORTB_BASE, GPIO_PIN_7);
    //ROM_GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);
    //ROM_GPIOPinTypeGPIOOutput(GPIO_PORTD_BASE, GPIO_PIN_7);
    //ROM_GPIOPinTypeGPIOOutput(GPIO_PORTE_BASE, GPIO_PIN_5);
    //
    GPIOPinConfigure(GPIO_PA0_U0RX);
    GPIOPinConfigure(GPIO_PA1_U0TX);
    ROM_GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);
    ROM_UARTConfigSetExpClk(UART0_BASE, ROM_SysCtlClockGet(), 115200, (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));

    GPIOPinConfigure(GPIO_PB0_U1RX);
    GPIOPinConfigure(GPIO_PB1_U1TX);
    ROM_GPIOPinTypeUART(GPIO_PORTB_BASE, GPIO_PIN_0 | GPIO_PIN_1);
    ROM_UARTConfigSetExpClk(UART1_BASE, ROM_SysCtlClockGet(), 115200, (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));

    GPIOPinConfigure(GPIO_PD6_U2RX);
    HWREG(GPIO_PORTD_BASE + GPIO_O_LOCK) = GPIO_LOCK_KEY_DD;
    HWREG(GPIO_PORTD_BASE + GPIO_O_CR) = 0xFF;
    GPIOPinConfigure(GPIO_PD7_U2TX);
    HWREG(GPIO_PORTD_BASE + GPIO_O_CR) = 0x7F;
    HWREG(GPIO_PORTD_BASE + GPIO_O_LOCK) = GPIO_LOCK_M;
    ROM_GPIOPinTypeUART(GPIO_PORTD_BASE, GPIO_PIN_6 | GPIO_PIN_7);
    ROM_UARTConfigSetExpClk(UART2_BASE, ROM_SysCtlClockGet(), 115200, (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));

    GPIOPinConfigure(GPIO_PC6_U3RX);
    GPIOPinConfigure(GPIO_PC7_U3TX);
    ROM_GPIOPinTypeUART(GPIO_PORTC_BASE, GPIO_PIN_6 | GPIO_PIN_7);
    ROM_UARTConfigSetExpClk(UART3_BASE, ROM_SysCtlClockGet(), 115200, (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));

    GPIOPinConfigure(GPIO_PC4_U4RX);
    GPIOPinConfigure(GPIO_PC5_U4TX);
    ROM_GPIOPinTypeUART(GPIO_PORTC_BASE, GPIO_PIN_4 | GPIO_PIN_5);
    ROM_UARTConfigSetExpClk(UART4_BASE, ROM_SysCtlClockGet(), 115200, (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));

    GPIOPinConfigure(GPIO_PE4_U5RX);
    HWREG(GPIO_PORTE_BASE + GPIO_O_LOCK) = GPIO_LOCK_KEY_DD;
    HWREG(GPIO_PORTE_BASE + GPIO_O_CR) = 0xFF;
    GPIOPinConfigure(GPIO_PE5_U5TX);
    HWREG(GPIO_PORTD_BASE + GPIO_O_CR) = 0xDF;
    HWREG(GPIO_PORTD_BASE + GPIO_O_LOCK) = GPIO_LOCK_M;

    ROM_GPIOPinTypeUART(GPIO_PORTE_BASE, GPIO_PIN_4 | GPIO_PIN_5);
    ROM_UARTConfigSetExpClk(UART5_BASE, ROM_SysCtlClockGet(), 115200, (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));

    GPIOPinConfigure(GPIO_PD4_U6RX);
    GPIOPinConfigure(GPIO_PD5_U6TX);
    ROM_GPIOPinTypeUART(GPIO_PORTD_BASE, GPIO_PIN_4 | GPIO_PIN_5);
    ROM_UARTConfigSetExpClk(UART6_BASE, ROM_SysCtlClockGet(), 115200, (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));

    GPIOPinConfigure(GPIO_PE0_U7RX);
    GPIOPinConfigure(GPIO_PE1_U7TX);
    ROM_GPIOPinTypeUART(GPIO_PORTD_BASE, GPIO_PIN_0 | GPIO_PIN_1);
    ROM_UARTConfigSetExpClk(UART7_BASE, ROM_SysCtlClockGet(), 115200, (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));


    ROM_SysCtlDelay(4000000);
    while(1){
        ROM_UARTCharPut(UART0_BASE, 0x55);
        //ROM_UARTCharPut(UART1_BASE, 0x55);
        ROM_UARTCharPut(UART2_BASE, 0x55);
        ROM_UARTCharPut(UART3_BASE, 0x55);
        ROM_UARTCharPut(UART4_BASE, 0x55);
        ROM_UARTCharPut(UART5_BASE, 0x55);
        ROM_UARTCharPut(UART6_BASE, 0x55);
        ROM_UARTCharPut(UART7_BASE, 0x55);

        //ROM_GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, GPIO_PIN_2);
        ROM_SysCtlDelay(1000000);
        //ROM_GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0);
        ROM_SysCtlDelay(100000);
    }


    // Prompt for text to be entered.
    UARTSend(UART1_BASE, (uint8_t *)"\033[2JEnter text: ", 16);


    ROM_GPIOPinTypeGPIOOutput(GPIO_PORTA_BASE, GPIO_PIN_5); 
    ROM_GPIOPinTypeGPIOOutput(GPIO_PORTB_BASE, GPIO_PIN_6); 
    ROM_GPIOPinTypeGPIOOutput(GPIO_PORTB_BASE, GPIO_PIN_7);

    ROM_GPIOPinWrite(GPIO_PORTA_BASE, GPIO_PIN_5, GPIO_PIN_5);

    // Enable the UART interrupt.
    ROM_IntEnable(INT_UART1);
    ROM_UARTIntEnable(UART1_BASE, UART_INT_RX | UART_INT_RT);
    ROM_IntEnable(INT_UART5);
    ROM_UARTIntEnable(UART5_BASE, UART_INT_RX | UART_INT_RT);
    //
    // Loop forever.
    //
    while(1)
    {
        // Set the GPIO high.
        ROM_GPIOPinWrite(GPIO_PORTB_BASE, GPIO_PIN_6, GPIO_PIN_6);
        ROM_GPIOPinWrite(GPIO_PORTB_BASE, GPIO_PIN_7, 0);

        ROM_UARTCharPut(UART5_BASE, 0x55);
        UARTSend(UART5_BASE, (uint8_t *)"\033[2JEnter text: ", 16);

        // Delay for a while.
        ROM_SysCtlDelay(4000000);

        // Set the GPIO low.
        ROM_GPIOPinWrite(GPIO_PORTB_BASE, GPIO_PIN_6, 0);
        ROM_GPIOPinWrite(GPIO_PORTB_BASE, GPIO_PIN_7, GPIO_PIN_7);
        //ROM_UARTCharPut(UART5_BASE, 0x55);

        // Delay for a while.
        ROM_SysCtlDelay(1000000);
    }
}
