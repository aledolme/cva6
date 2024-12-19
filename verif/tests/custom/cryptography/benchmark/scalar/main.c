// Under development
//-----------------------------------------------------------------------------
// Author: Behnam Farnaghinejad
//-----------------------------------------------------------------------------

#include "aes.h"
#include "util.h"
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#define AES_KEY_SIZE 16
#define AES_BLOCK_SIZE 16
#define NUM_ITERATIONS 50

uint8_t key[AES_KEY_SIZE] = {
    0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6,
    0xab, 0xf7, 0xcf, 0x4f, 0x3c, 0xae, 0x5a, 0x1a
};

uint8_t plainBlock[AES_BLOCK_SIZE] = {
    0x32, 0x43, 0xf6, 0xa8, 0x88, 0x5a, 0x30, 0x8d,
    0x31, 0x31, 0x98, 0xa2, 0xe0, 0x37, 0x07, 0x34
};

uint8_t cipherBlock[AES_BLOCK_SIZE] = {
    0x6d, 0xc2, 0xf4, 0xce, 0x70, 0x28, 0x7a, 0xf7,
    0xda, 0x49, 0x54, 0x94, 0xc8, 0xbe, 0x64, 0x5d
};

int compare_arrays(uint8_t* a, uint8_t* b, size_t len) {
    for (size_t i = 0; i < len; i++) {
        if (a[i] != b[i]) {
            return 0;
        }
    }
    return 1;
}

int main() {

    uint8_t  state[AES_BLOCK_SIZE];
    uint64_t start_cycles, end_cycles;
    uint64_t start_intsr, end_intsr;

    uint64_t total_enc_cycles = 0, total_dec_cycles = 0;
    uint64_t total_enc_intsr = 0, total_dec_intsr = 0;

    // Key expansion for encryption
    KeyExpansion_ENC(RoundKey, key);

    for (int i = 0; i < NUM_ITERATIONS; i++) {
        // Copy input to state
        memcpy(state, plainBlock, AES_BLOCK_SIZE);

        // Measure encryption cycles
        start_intsr = read_csr(minstret);
        start_cycles = read_csr(mcycle);
        AES_Cipher((uint32_t*)state, RoundKey);
        end_cycles = read_csr(mcycle);
        end_intsr = read_csr(minstret);

        total_enc_cycles += (end_cycles - start_cycles);
        total_enc_intsr += (end_intsr - start_intsr);
    }

    // Verify encryption result once
    if (compare_arrays(state, cipherBlock, AES_BLOCK_SIZE)) {
        printf("Encryption: Success\n");
    } else {
        printf("Encryption: Failure\n");
    }

    // Print average encryption cycles
    printf("Average Encryption Cycles: %d cycles\n", total_enc_cycles / NUM_ITERATIONS);
    printf("Average Encryption Instructions: %d instructions\n", total_enc_intsr / NUM_ITERATIONS);


    // Key expansion for decryption
    KeyExpansion_DEC(RoundKey, key);

    for (int i = 0; i < NUM_ITERATIONS; i++) {

        memcpy(state, cipherBlock, AES_BLOCK_SIZE);

        // Measure decryption cycles
        start_intsr = read_csr(minstret);
        start_cycles = read_csr(mcycle);
        AES_InvCipher((uint32_t*)state, RoundKey);
        end_cycles = read_csr(mcycle);
        end_intsr = read_csr(minstret);

        total_dec_cycles += (end_cycles - start_cycles);
        total_dec_intsr += (end_intsr - start_intsr);
    }

    // Verify decryption result once
    if (compare_arrays(state, plainBlock, AES_BLOCK_SIZE)) {
        printf("Decryption: Success\n");
    } else {
        printf("Decryption: Failure\n");
    }

    // Print average decryption cycles
    printf("Average Decryption Cycles: %d cycles\n", total_dec_cycles / NUM_ITERATIONS);
    printf("Average Decryption Instructions: %d instructions\n", total_dec_intsr / NUM_ITERATIONS);

    return 0;
}
