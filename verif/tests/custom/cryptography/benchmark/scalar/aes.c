// aes.c
#include "aes.h"

uint32_t RoundKey[AES_keyExpSize];

void KeyExpansion_ENC(uint32_t* RoundKey, uint8_t* Key)
{
    uint64_t a2,a3,t0;

    asm volatile (

        "ld %1, 0(%4)\n"
        "ld %2, 8(%4)\n"

        "sd %1, 0(%3)\n"
        "sd %2, 8(%3)\n"

        "aes64ks1i %0, %2, 0\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+16)(%3)\n"
        "sd        %2, (8+16)(%3)\n"

        "aes64ks1i %0, %2, 1\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+32)(%3)\n"
        "sd        %2, (8+32)(%3)\n"

        "aes64ks1i %0, %2, 2\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+48)(%3)\n"
        "sd        %2, (8+48)(%3)\n"

        "aes64ks1i %0, %2, 3\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+64)(%3)\n"
        "sd        %2, (8+64)(%3)\n"

        "aes64ks1i %0, %2, 4\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+80)(%3)\n"
        "sd        %2, (8+80)(%3)\n"

        "aes64ks1i %0, %2, 5\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+96)(%3)\n"
        "sd        %2, (8+96)(%3)\n"

        "aes64ks1i %0, %2, 6\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+112)(%3)\n"
        "sd        %2, (8+112)(%3)\n"

        "aes64ks1i %0, %2, 7\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+128)(%3)\n"
        "sd        %2, (8+128)(%3)\n"

        "aes64ks1i %0, %2, 8\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+144)(%3)\n"
        "sd        %2, (8+144)(%3)\n"

        "aes64ks1i %0, %2, 9\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+160)(%3)\n"
        "sd        %2, (8+160)(%3)\n"


        : "+r" (t0), "+r" (a2), "+r" (a3)
        : "r" (RoundKey), "r" (Key)
        : "memory"
    );
}

void KeyExpansion_DEC(uint32_t* RoundKey, uint8_t* Key)
{
    uint64_t a2,a3,t0;

    asm volatile (

        "ld %1, 0(%4)\n"
        "ld %2, 8(%4)\n"

        "sd %1, 0(%3)\n"
        "sd %2, 8(%3)\n"

        "aes64ks1i %0, %2, 0\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+16)(%3)\n"
        "sd        %2, (8+16)(%3)\n"

        "aes64ks1i %0, %2, 1\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+32)(%3)\n"
        "sd        %2, (8+32)(%3)\n"

        "aes64ks1i %0, %2, 2\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+48)(%3)\n"
        "sd        %2, (8+48)(%3)\n"

        "aes64ks1i %0, %2, 3\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+64)(%3)\n"
        "sd        %2, (8+64)(%3)\n"

        "aes64ks1i %0, %2, 4\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+80)(%3)\n"
        "sd        %2, (8+80)(%3)\n"

        "aes64ks1i %0, %2, 5\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+96)(%3)\n"
        "sd        %2, (8+96)(%3)\n"

        "aes64ks1i %0, %2, 6\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+112)(%3)\n"
        "sd        %2, (8+112)(%3)\n"

        "aes64ks1i %0, %2, 7\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+128)(%3)\n"
        "sd        %2, (8+128)(%3)\n"

        "aes64ks1i %0, %2, 8\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+144)(%3)\n"
        "sd        %2, (8+144)(%3)\n"

        "aes64ks1i %0, %2, 9\n"
        "aes64ks2  %1, %0, %1\n"
        "aes64ks2  %2, %1, %2\n"

        "sd        %1, (0+160)(%3)\n"
        "sd        %2, (8+160)(%3)\n"

        "addi      %3,%3,16\n"
        "addi      %4,%3,144\n"

        "loop:\n"

        "ld        %1,0(%3)\n"     
        "ld        %2,8(%3)\n"

        "aes64im   %1,%1\n"
        "aes64im   %2,%2\n"

        "sd        %1,0(%3)\n"     
        "sd        %2,8(%3)\n"
        
        "addi      %3,%3,16\n"
        "bne       %3,%4,loop\n"

        : "+r" (t0), "+r" (a2), "+r" (a3)
        : "r" (RoundKey), "r" (Key)
        : "memory"
    );
}

void AES_Cipher(uint32_t* state,   uint32_t* RoundKey)
{
    uint64_t a5,a6,t0,t1,t2,t3,a7,t5;
   
    asm volatile (
        // Load the state into a5 and a6
        "ld %4, 0(%9)\n"
        "ld %5, 8(%9)\n"

        // Load the round keys
        "ld %0, (0+0)(%8)\n"
        "ld %1, (8+0)(%8)\n"

        "ld %2, (16+0)(%8)\n"
        "ld %3, (24+0)(%8)\n"

        "xor %4, %4, %0\n"
        "xor %5, %5, %1\n"

        "aes64esm %6, %4, %5\n"
        "aes64esm %7, %5, %4\n"

        "xor %6, %6, %2\n"
        "xor %7, %7, %3\n"

        "aes64esm %4, %6, %7\n"
        "aes64esm %5, %7, %6\n"


        "ld %0, (0+32)(%8)\n"
        "ld %1, (8+32)(%8)\n"

        "ld %2, (16+32)(%8)\n"
        "ld %3, (24+32)(%8)\n"

        "xor %4, %4, %0\n"
        "xor %5, %5, %1\n"

        "aes64esm %6, %4, %5\n"
        "aes64esm %7, %5, %4\n"

        "xor %6, %6, %2\n"
        "xor %7, %7, %3\n"

        "aes64esm %4, %6, %7\n"
        "aes64esm %5, %7, %6\n"


        "ld %0, (0+64)(%8)\n"
        "ld %1, (8+64)(%8)\n"

        "ld %2, (16+64)(%8)\n"
        "ld %3, (24+64)(%8)\n"

        "xor %4, %4, %0\n"
        "xor %5, %5, %1\n"

        "aes64esm %6, %4, %5\n"
        "aes64esm %7, %5, %4\n"

        "xor %6, %6, %2\n"
        "xor %7, %7, %3\n"

        "aes64esm %4, %6, %7\n"
        "aes64esm %5, %7, %6\n"


        "ld %0, (0+96)(%8)\n"
        "ld %1, (8+96)(%8)\n"

        "ld %2, (16+96)(%8)\n"
        "ld %3, (24+96)(%8)\n"

        "xor %4, %4, %0\n"
        "xor %5, %5, %1\n"

        "aes64esm %6, %4, %5\n"
        "aes64esm %7, %5, %4\n"

        "xor %6, %6, %2\n"
        "xor %7, %7, %3\n"

        "aes64esm %4, %6, %7\n"
        "aes64esm %5, %7, %6\n"

        "ld %0, (0+128)(%8)\n"
        "ld %1, (8+128)(%8)\n"

        "ld %2, (16+128)(%8)\n"
        "ld %3, (24+128)(%8)\n"

        "xor %4, %4, %0\n"
        "xor %5, %5, %1\n"

        "aes64esm %6, %4, %5\n"
        "aes64esm %7, %5, %4\n"

        "xor %6, %6, %2\n"
        "xor %7, %7, %3\n"

        "aes64es %4, %6, %7\n"
        "aes64es %5, %7, %6\n"

        "ld %0, (32+128)(%8)\n"
        "ld %1, (40+128)(%8)\n"

        "xor %4, %4, %0\n"
        "xor %5, %5, %1\n"

        "sd        %4, (0)(%9)\n"
        "sd        %5, (8)(%9)\n"

        : "+r" (t2), "+r" (t3), "+r" (t0), "+r" (t1), "+r" (a5), "+r" (a6), "+r" (a7), "+r" (t5)
        : "r" (RoundKey),"r" (state)
        : "memory"
    );
}

void AES_InvCipher(uint32_t* state, uint32_t* RoundKey)
{
    uint64_t a5,a6,t0,t1,t2,t3,a7,t5;

    // Load the ciphertext into a5 and a6
    asm volatile (
        "ld %4, 0(%9)\n"
        "ld %5, 8(%9)\n"
        
        "ld %0, (0+160)(%8)\n"
        "ld %1, (8+160)(%8)\n"
        
        "xor %4, %4, %0\n"
        "xor %5, %5, %1\n"

        "ld %0, (16+128)(%8)\n"
        "ld %1, (24+128)(%8)\n"

        "ld %2, (0+128)(%8)\n"
        "ld %3, (8+128)(%8)\n"

        "aes64dsm %6, %4, %5\n"
        "aes64dsm %7, %5, %4\n"

        "xor %4, %6, %0\n"
        "xor %5, %7, %1\n"

        "aes64dsm %6, %4, %5\n"
        "aes64dsm %7, %5, %4\n"

        "xor %4, %6, %2\n"
        "xor %5, %7, %3\n"

        "ld %0, (16+96)(%8)\n"
        "ld %1, (24+96)(%8)\n"

        "ld %2, (0+96)(%8)\n"
        "ld %3, (8+96)(%8)\n"

        "aes64dsm %6, %4, %5\n"
        "aes64dsm %7, %5, %4\n"

        "xor %4, %6, %0\n"
        "xor %5, %7, %1\n"

        "aes64dsm %6, %4, %5\n"
        "aes64dsm %7, %5, %4\n"

        "xor %4, %6, %2\n"
        "xor %5, %7, %3\n"

        "ld %0, (16+64)(%8)\n"
        "ld %1, (24+64)(%8)\n"

        "ld %2, (0+64)(%8)\n"
        "ld %3, (8+64)(%8)\n"

        "aes64dsm %6, %4, %5\n"
        "aes64dsm %7, %5, %4\n"

        "xor %4, %6, %0\n"
        "xor %5, %7, %1\n"

        "aes64dsm %6, %4, %5\n"
        "aes64dsm %7, %5, %4\n"

        "xor %4, %6, %2\n"
        "xor %5, %7, %3\n"

        "ld %0, (16+32)(%8)\n"
        "ld %1, (24+32)(%8)\n"

        "ld %2, (0+32)(%8)\n"
        "ld %3, (8+32)(%8)\n"

        "aes64dsm %6, %4, %5\n"
        "aes64dsm %7, %5, %4\n"

        "xor %4, %6, %0\n"
        "xor %5, %7, %1\n"

        "aes64dsm %6, %4, %5\n"
        "aes64dsm %7, %5, %4\n"

        "xor %4, %6, %2\n"
        "xor %5, %7, %3\n"

        "ld %0, (16+0)(%8)\n"
        "ld %1, (24+0)(%8)\n"

        "ld %2, (0+0)(%8)\n"
        "ld %3, (8+0)(%8)\n"

        "aes64dsm %6, %4, %5\n"
        "aes64dsm %7, %5, %4\n"

        "xor %4, %6, %0\n"
        "xor %5, %7, %1\n"

        "aes64ds %6, %4, %5\n"
        "aes64ds %7, %5, %4\n"

        "xor %4, %6, %2\n"
        "xor %5, %7, %3\n"

        "sd        %4, (0)(%9)\n"
        "sd        %5, (8)(%9)\n"

        : "+r" (t2), "+r" (t3), "+r" (t0), "+r" (t1), "+r" (a5), "+r" (a6), "+r" (a7), "+r" (t5)
        : "r" (RoundKey),"r" (state)
        : "memory"
    );
}

int stringToHexMatrix(char *input, uint8_t* output) {
    int length = strlen(input);
    int numRows = (length + MAX_COLUMNS - 1) / MAX_COLUMNS;
    uint8_t missingCharLastRow = (uint8_t) (MAX_COLUMNS - (length % MAX_COLUMNS));

    for (int i = 0; i < numRows; i++) {
        for (int j = 0; j < MAX_COLUMNS; j++) {
            int index = i * MAX_COLUMNS + j;
            if (index < length) {
                output[i * MAX_COLUMNS + j] = input[index];
            } else {
                output[i * MAX_COLUMNS + j] = missingCharLastRow;
            }
        }
    }

    return numRows;
}

uint8_t hexCharToInt(char c) {
    if (c >= '0' && c <= '9')
        return c - '0';
    else if (c >= 'a' && c <= 'f')
        return c - 'a' + 10;
    else if (c >= 'A' && c <= 'F')
        return c - 'A' + 10;
    else
        return 0;
}

int splitHexToBytes(char* hexString, uint8_t* output) {
    size_t length = strlen(hexString);
    size_t numChunks = (length + 31) / 32;

    for (size_t i = 0; i < numChunks; i++) {
        for (size_t j = 0; j < 16; j++) {
            size_t index = i * 32 + j * 2;
            if (index < length) {
                uint8_t highNibble = hexCharToInt(hexString[index]);
                uint8_t lowNibble = hexCharToInt(hexString[index + 1]);
                output[i * 32 + j] = (highNibble << 4) | lowNibble;
            } else {
                output[i * 32 + j] = 0;
            }
        }
    }
    return numChunks;
}
