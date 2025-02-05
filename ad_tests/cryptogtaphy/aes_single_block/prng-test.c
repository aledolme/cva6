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
#include "trigger_auto.h"

#define AES_BLOCK_SIZE 16 // AES block size in bytes


void cv_xif_prng_init(uint32_t* a, uint32_t* b)
{
    asm volatile (
        "lw a1, %[input_a]\n"               //a0: x10
        "lw a0, %[input_b]\n"               //a1: x11
        ".insn r 0x7B, 1, 5, x0, a0, a1\n"  //CUS_XOR(a0,a1,a2)
        :     
        : [input_a] "m" (*a), [input_b] "m" (*b) // Input operands
        : 
    );
}


//**********************MAIN******************************************/
int main() {

    uint32_t volatile * trigger = (uint32_t*)TRIGGER_CTRL;
    uint32_t rs1_fixed = 0xDEADBEEF;
    uint32_t rs2_fixed = 0xDEADBEEF;

    //Putting low the trigger
    asm volatile ("": : : "memory");
    *trigger = 1 << TRIGGER_CTRL_START;
    asm volatile ("": : : "memory");


    cv_xif_prng_init(&rs1_fixed, &rs2_fixed);

    asm volatile (
        ".insn r 0x7B, 1, 6, x0, x0, x0\n"
        ".insn r 0x7B, 1, 6, x0, x0, x0\n"
        ".insn r 0x7B, 1, 6, x0, x0, x0\n"
        : : :
    );

    asm volatile (".insn r 0x7B, 1, 7, x0, x0, x0\n" : : : );

    // De-activate trigger_GPIO
    asm volatile ("": : : "memory");
    *trigger = 1 << TRIGGER_CTRL_STOP;
    asm volatile ("": : : "memory");



    return 0;
}