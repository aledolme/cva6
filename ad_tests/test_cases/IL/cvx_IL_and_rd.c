/*****************************************************************************
# Simple custom test:       cvx_IL_and_rs1.c
# Author:                   Alessandra Dolmeta
*****************************************************************************/

#include <stdint.h>
#include <stdio.h>


#pragma GCC push_options
#pragma GCC optimize ("O0")
void cv_xif_CUS_AND(uint32_t* a, uint32_t* b, uint32_t* res)
{
    asm volatile (
        "lw a0, %[input_a]\n"               //a0: x10
        "lw a1, %[input_b]\n"               //a1: x11
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        ".insn r 0x7B, 1, 7, a2, a0, a1\n"  //CUS_AND(a0,a1,a2)
        ".insn r 0x7B, 1, 7, a3, a0, a1\n"  //CUS_AND(a0,a1,a3)
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "nop\n"
        "mv %[output_res], a1\n"
        : [output_res] "=r" (*res)    
        : [input_a] "m" (*a), [input_b] "m" (*b) // Input operands
        : 
    );
}
#pragma GCC pop_options

int main(int argc, char* arg[]) {
	
	uint32_t a, b, c, d;
	uint32_t res;

	a = 0X0005;
	b = 0X0006;
    c = 0xFFFF;
    d = 0X1010;

    //cvx_IL_and_rd
    cv_xif_CUS_AND(&a, &b, &res);

	return 0;
}


