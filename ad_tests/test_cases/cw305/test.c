/*****************************************************************************
# Simple custom test:       test.c
# Author:                   Alessandra Dolmeta
# Description: 
*****************************************************************************/


#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "AES_128_CBC.h"

#define AES_BLOCK_SIZE 16 // AES block size in bytes

#define GPIO_TRIGGER_ON()  // Placeholder for activating GPIO
#define GPIO_TRIGGER_OFF() // Placeholder for deactivating GPIO

void output(const char* title, uint32_t i, const char* title2, uint8_t *data, uint32_t size) {
    printf("%s", title);
    printf("-%d ", i);
    printf("%s", title2);
    for (uint8_t index = 0; index < size; index++) {
        printf("%02x", data[index]);
    }
    printf("\n");
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

    //Putting low the trigger
    GPIO_TRIGGER_OFF();


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

        output("\niv block", i, ": 0x", data, 16);
        // Perform one round of AES CBC using the current IV
        for (unsigned int offset = 0; offset < 32; offset += 16) {
            AES_Encrypt(&ctx, data + offset, data + offset);
        }
        // Update IV for next round
        output("encrypted block", i, ": 0x", data, 16);
        memcpy(ciphertext, data, AES_BLOCK_SIZE);

        // Determine case based on LSB of the ciphertext
        int lsb_check = ciphertext[0] & 0x01; // Check the LSB of the last byte (most significant byte of the 128-bit value)
        if (lsb_check) {
            // Activate trigger_GPIO
            GPIO_TRIGGER_ON();

            // Execute operation with random data (use 4 bytes of ciphertext as random data)
            uint32_t rs1 = *(uint32_t *)&ciphertext[4];  // Second 4 bytes as rs1
            uint32_t rs2 = *(uint32_t *)&ciphertext[8];  // Next 4 bytes as rs2
            printf("Trace %u: Random data operation with rs1: 0x%08X, rs2: 0x%08X\n", i, rs1, rs2);

            // De-activate trigger_GPIO
            GPIO_TRIGGER_OFF();
        }
        else {
            // Activate trigger_GPIO
            GPIO_TRIGGER_ON();

            // Execute operation with fixed input
            uint32_t fixed_data = 0xDEADBEEF; // Example fixed input
            printf("Trace %u: Fixed data operation with data: 0x%08X\n", i, fixed_data);

            // De-activate trigger_GPIO
            GPIO_TRIGGER_OFF();
        }
    }

    return 0;
}
