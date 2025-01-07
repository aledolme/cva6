#include <stdint.h>
#include <stdio.h>
#include "trigger_auto.h"

void cv_xif_CUS_AND(uint32_t* a, uint32_t* b, uint32_t* res)
{
    asm volatile (
        "lw a1, %[input_a]\n"               //a0: x10
        "lw a0, %[input_b]\n"               //a1: x11
        ".insn r 0x7B, 1, 7, a2, a0, a1\n"  //CUS_AND(a0,a1,a2)
        "mv %[output_res], a2\n"
        : [output_res] "=r" (*res)    
        : [input_a] "m" (*a), [input_b] "m" (*b) // Input operands
        : 
    );
}


int main() {

    uint32_t a = 5;
    uint32_t b = 6;
    uint32_t res;
    uint32_t flag;


    uint32_t volatile * trigger = (*(volatile uint32_t*)TRIGGER_CTRL);
    asm volatile ("": : : "memory");
    *trigger = 1 << TRIGGER_CTRL_START;
    asm volatile ("": : : "memory");


    cv_xif_CUS_AND(&a, &b, &res);

    asm volatile ("": : : "memory");
    *trigger = 1 << TRIGGER_CTRL_STOP;
    asm volatile ("": : : "memory");

    return 0;
}
