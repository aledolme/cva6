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


void output(const char* title, uint32_t i, const char* title2, uint8_t *data, uint32_t size) {
    printf("%s", title);
    printf("-%d ", i);
    printf("%s", title2);
    for (uint8_t index = 0; index < size; index++) {
        printf("%02x", data[index]);
    }
    printf("\n");
}

void cv_xif_CUS_OR(uint32_t* a, uint32_t* b, uint32_t* res)
{
    asm volatile (
        "lw a1, %[input_a]\n"               //a0: x10
        "lw a0, %[input_b]\n"               //a1: x11
        "or a2, a0, a1\n"                  // Perform a bitwise OR operation: a2 = a0 & a1
        "mv %[output_res], a2\n"
        : [output_res] "=r" (*res)    
        : [input_a] "m" (*a), [input_b] "m" (*b) // Input operands
        : 
    );
}


//**********************MAIN******************************************/
int main() {

    //Initialization: boot of the device (which is done automatically)

    uint8_t iv[AES_BLOCK_SIZE] = {0};       // Initialization vector (seed for AES CBC)
    uint32_t num_traces = 0;                // Number of traces to generate
    uint8_t key[AES_BLOCK_SIZE] = {         // Initialize AES CBC key (128 bit / 16 bytes fixed)
        0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
        0xab, 0xf7, 0x97, 0x99, 0x89, 0xcf, 0xab, 0x12
    };
    uint8_t ciphertext[AES_BLOCK_SIZE];     // Cipertext to be saved between on execution and another
    uint8_t input_block[AES_BLOCK_SIZE];    // Input block for AES (random or fixed data)
    uint8_t plaintext[AES_BLOCK_SIZE*2];
    AES_CTX ctx;
    uint32_t res;

    uint32_t volatile * trigger = (uint32_t*)TRIGGER_CTRL;

    //Putting low the trigger
    asm volatile ("": : : "memory");
    *trigger = 1 << TRIGGER_CTRL_STOP;
    asm volatile ("": : : "memory");

    //TBD: Waiting for UART-input
    //For now: simulate taking 32-byte seed as the IV from external input
    uint8_t seed_input[AES_BLOCK_SIZE*2] = {
        0x0f, 0x47, 0x0e, 0x7f, 0x75, 0x9c, 0x47, 0x0f,
        0x42, 0xc6, 0xd3, 0x9c, 0xbc, 0x8e, 0x23, 0x25
    };
    memcpy(iv, seed_input, AES_BLOCK_SIZE);

    //AES-CBC initialization    
    AES_EncryptInit(&ctx, key, iv);

    //TBD: Waiting for UART-input
    //For now: Simulate taking the number of traces from external input
    num_traces = 2;
    uint8_t data[32] = {0x54, 0x68, 0x69, 0x73, 0x20, 0x69, 0x73, 0x20, 0x61, 0x20, 0x73, 0x69, 0x6d, 0x70, 0x6c, 0x65,
                        0x20, 0x41, 0x45, 0x53, 0x2d, 0x31, 0x32, 0x38, 0x2d, 0x43, 0x42, 0x43, 0x20, 0x65, 0x78, 0x61};

    memcpy(plaintext, data, AES_BLOCK_SIZE*2);

    
    for (uint32_t i = 0; i < num_traces; i++) {

        //output("\niv block", i, ": 0x", data, 16);
        // Perform one round of AES CBC using the current IV
        for (unsigned int offset = 0; offset < 32; offset += 16) {
            AES_Encrypt(&ctx, data + offset, data + offset);
        }
        // Update IV for next round
        //output("encrypted block", i, ": 0x", data, 16);
        memcpy(ciphertext, data, AES_BLOCK_SIZE);

        // Determine case based on LSB of the ciphertext
        int lsb_check = ciphertext[0] & 0x01; // Check the LSB of the last byte (most significant byte of the 128-bit value)
        if (lsb_check) {

            // Execute operation with random data (use 4 bytes of ciphertext as random data)
            uint32_t rs1 = *(uint32_t *)&ciphertext[4];  // Second 4 bytes as rs1
            uint32_t rs2 = *(uint32_t *)&ciphertext[8];  // Next 4 bytes as rs2
            //printf("Trace %u: Random data operation with rs1: 0x%08X, rs2: 0x%08X\n", i, rs1, rs2);

            // Activate trigger_GPIO
            uint32_t volatile * trigger = (uint32_t*)TRIGGER_CTRL;
            *trigger = 1 << TRIGGER_CTRL_START;

            cv_xif_CUS_OR(&rs1, &rs2, &res);

            // De-activate trigger_GPIO
            asm volatile ("": : : "memory");
            *trigger = 1 << TRIGGER_CTRL_STOP;
            asm volatile ("": : : "memory");
            }
        else {
            // Execute operation with fixed inputs
            uint32_t rs1_fixed = 0xDEADBEEF;
            uint32_t rs2_fixed = 0x01234567;
            //printf("Trace %u: Fixed data operation with data: 0x%08X and 0x%08X\n", i, rs1_fixed, rs2_fixed);

            // Activate trigger_GPIO
            uint32_t volatile * trigger = (uint32_t*)TRIGGER_CTRL;
            *trigger = 1 << TRIGGER_CTRL_START;

            cv_xif_CUS_OR(&rs1_fixed, &rs2_fixed, &res);

            // De-activate trigger_GPIO
            asm volatile ("": : : "memory");
            *trigger = 1 << TRIGGER_CTRL_STOP;
            asm volatile ("": : : "memory");
        }
    }

    return 0;
}
