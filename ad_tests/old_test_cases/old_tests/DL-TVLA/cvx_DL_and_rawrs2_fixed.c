/*****************************************************************************
# Simple custom test:       cvx_DL_and_rawrs1_fixed.c
# Author:                   Alessandra Dolmeta
*****************************************************************************/

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>


#define NTESTS 10

__attribute__((aligned(16))) int b[10] = {0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001};

#pragma GCC push_options
#pragma GCC optimize ("O0")
void cv_xif_CUS_AND(uint32_t* a, uint32_t* b, uint32_t* res)
{
    asm volatile (
        "lw a1, %[input_a]\n"               //a0: x10
        "lw a0, %[input_b]\n"               //a1: x11
        ".insn r 0x7B, 1, 7, a2, a0, a1\n"  //CUS_AND(a0,a1,a2)
        ".insn r 0x7B, 1, 7, a3, a0, a2\n"  //CUS_AND(a2,a1,a3)
        "mv %[output_res], a3\n"
        : [output_res] "=r" (*res)    
        : [input_a] "m" (*a), [input_b] "m" (*b) // Input operands
        : 
    );
}
#pragma GCC pop_options


#pragma GCC push_options
#pragma GCC optimize ("O0")
int main(int argc, char* arg[]) {
	
	uint32_t a;
	uint32_t res[NTESTS];

	a = 0x00000000;

    for (int i=0; i<NTESTS; i++){
        asm volatile (
            "nop\n"
            "nop\n"
            "nop\n"
            "nop\n"
            "nop\n"
            "nop\n"
            : : : 
        );
        cv_xif_CUS_AND(&a, &b[i], &res[i]);
        asm volatile (
            "nop\n"
            "nop\n"
            "nop\n"
            "nop\n"
            "nop\n"
            "nop\n"
            : : : 
        );
    }

	return 0;
}

#pragma GCC pop_options


