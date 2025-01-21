/****************************************************************************************
# Simple custom test:       test.c
# Author:                   Alessandra Dolmeta
# Description: 
#                           AES-CBC taken fro: https://github.com/halloweeks/AES-128-CBC
/****************************************************************************************/


#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "AES_128_CBC.h"
#include "trigger_auto.h"
#include "uart.h"

#define AES_BLOCK_SIZE 16 // AES block size in bytes


void cv_xif_CUS_XOR(uint64_t* a, uint64_t* b, uint64_t* res)
{
    asm volatile (
        "lw a1, %[input_a]\n"               //a0: x10
        "lw a0, %[input_b]\n"               //a1: x11
        ".insn r 0x7B, 1, 5, a2, a0, a1\n"  //CUS_XOR(a0,a1,a2)
        "mv %[output_res], a2\n"
        : [output_res] "=r" (*res)    
        : [input_a] "m" (*a), [input_b] "m" (*b) // Input operands
        : 
    );
}

//**********************MAIN******************************************/
int main() {

    uint64_t res;
    uint64_t rs1 = 0x1111111111111111;
    uint64_t rs2 = 0x3333333333333333;

    uint32_t freq, baud;  //TO BE SET
    freq = 50000000;    //50 MHz
    baud = 115200;      //115200 bps
    init_uart(freq, baud);

    uint32_t volatile * trigger = (uint32_t*)TRIGGER_CTRL;

    // Activate trigger_GPIO
    asm volatile ("": : : "memory");
    *trigger = 1 << TRIGGER_CTRL_START;
    asm volatile ("": : : "memory");

    cv_xif_CUS_XOR(&rs1, &rs2, &res);

    // De-activate trigger_GPIO
    asm volatile ("": : : "memory");
    *trigger = 1 << TRIGGER_CTRL_STOP;
    asm volatile ("": : : "memory");
    
    print_uart("Hi Telsy! :)");
    print_uart("\nResult: 0x");
    print_uart_addr(res); // Use the existing print_uart_addr to print the full 64-bit value
    print_uart("\n");


    return 0;
}

