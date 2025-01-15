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

#define AES_BLOCK_SIZE 16 // AES block size in bytes

__attribute__ ((noinline)) void cv_xif_CUS_XOR(uint32_t* a, uint32_t* b, uint32_t* res)
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

__attribute__ ((noinline)) void XOR(uint32_t* a, uint32_t* b, uint32_t* res)
{
    asm volatile (
        "lw a1, %[input_a]\n"               //a0: x10
        "lw a0, %[input_b]\n"               //a1: x11
        "xor a2, a0, a1\n"
        "mv %[output_res], a2\n"
        : [output_res] "=r" (*res)    
        : [input_a] "m" (*a), [input_b] "m" (*b) // Input operands
        : 
    );
}



//**********************MAIN******************************************/
int main() {

    uint8_t iv[AES_BLOCK_SIZE] = {0};       // Initialization vector (seed for AES CBC)
    uint8_t key[AES_BLOCK_SIZE] = {         // Initialize AES CBC key (128 bit / 16 bytes fixed)
        0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
        0xab, 0xf7, 0x97, 0x99, 0x89, 0xcf, 0xab, 0x12
    };
    uint8_t ciphertext[AES_BLOCK_SIZE];     // Cipertext to be saved between on execution and another
    uint8_t plaintext[32] = {0};            //Plaintext is always zero
    uint32_t res;

    AES_CTX ctx;


    uint32_t volatile * trigger = (uint32_t*)TRIGGER_CTRL;
    asm volatile ("": : : "memory");
    *trigger = 1 << TRIGGER_CTRL_STOP; //Putting low the trigger
    asm volatile ("": : : "memory");

    uint8_t seed_input[AES_BLOCK_SIZE] = {
        0x0f, 0x47, 0x0e, 0x7f, 0x75, 0x9c, 0x47, 0x0f,
        0x42, 0xc6, 0xd3, 0x9c, 0xbc, 0x8e, 0x23, 0x25
    };
    memcpy(iv, seed_input, AES_BLOCK_SIZE);

    AES_EncryptInit(&ctx, key, iv);
    uint32_t rs1 = 0xDEADBEEF;
    uint32_t rs2 = 0x01234567;

    uint32_t num_traces = 4;

    for (uint32_t i = 0; i < num_traces; i++) {
          
        AES_Encrypt(&ctx, plaintext, ciphertext); 
        int lsb_check = ciphertext[0] & 0x01; // Check the LSB of the last byte (most significant byte of the 128-bit value)
            if (lsb_check) {
    
                // Activate trigger_GPIO
                asm volatile ("": : : "memory");
                *trigger = 1 << TRIGGER_CTRL_START;
                asm volatile ("": : : "memory");
                
                cv_xif_CUS_XOR(&rs1, &rs2, &res);

                // De-activate trigger_GPIO
                asm volatile ("": : : "memory");
                *trigger = 1 << TRIGGER_CTRL_STOP;
                asm volatile ("": : : "memory");
            }
            else{
                // Activate trigger_GPIO
                asm volatile ("": : : "memory");
                *trigger = 1 << TRIGGER_CTRL_START;
                asm volatile ("": : : "memory");

                XOR(&rs1, &rs2, &res);

                // De-activate trigger_GPIO
                asm volatile ("": : : "memory");
                *trigger = 1 << TRIGGER_CTRL_STOP;
                asm volatile ("": : : "memory");
            }    
    }

    return 0;
}
