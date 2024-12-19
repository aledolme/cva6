#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#define AES128 1
//#define AES192 1
//#define AES256 1

#define AES_BLOCKLEN 16 // Block length in bytes - AES is 128b block only

#if defined(AES256) && (AES256 == 1)
    #define AES_KEYLEN 32
    #define AES_keyExpSize 60
#elif defined(AES192) && (AES192 == 1)
    #define AES_KEYLEN 24
    #define AES_keyExpSize 51
#else
    #define AES_KEYLEN 16   // Key length in bytes
    #define AES_keyExpSize 44
#endif

uint32_t RoundKey[AES_keyExpSize];
void AES_Cipher(uint32_t* state,uint32_t* RoundKey);
void AES_InvCipher(uint32_t* state,uint32_t* RoundKey);
void KeyExpansion_ENC(uint32_t* RoundKey,   uint8_t* Key);
void KeyExpansion_DEC(uint32_t* RoundKey,   uint8_t* Key);

struct AES_ctx
{
  uint8_t RoundKey[AES_keyExpSize];
};

#define MAX_COLUMNS 16

int stringToHexMatrix(  char *input, uint8_t* output) ;
int splitHexToBytes(  char* hexString,uint8_t* output);
uint8_t hexCharToInt(char c);
/*****************************************************************************/
/* Defines:                                                                  */
/*****************************************************************************/
// The number of columns comprising a state in AES. This is a  ant in AES. Value=4
#define Nb 4

#if defined(AES256) && (AES256 == 1)
    #define Nk 8
    #define Nr 14
#elif defined(AES192) && (AES192 == 1)
    #define Nk 6
    #define Nr 12
#else
    #define Nk 4        // The number of 32 bit words in a key.
    #define Nr 10       // The number of rounds in AES Cipher.
#endif

// This function produces Nb(Nr+1) round keys. The round keys are used in each round to decrypt the states. 
void KeyExpansion_ENC(uint32_t* RoundKey,   uint8_t* Key)
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

void KeyExpansion_DEC(uint32_t* RoundKey,   uint8_t* Key)
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
// Cipher is the main function that encrypts the PlainText.
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

// Function to convert a string to a matrix of hexadecimal characters
int stringToHexMatrix(char *input, uint8_t* output) {
    int length = strlen(input);
    int numRows = (length + MAX_COLUMNS - 1) / MAX_COLUMNS; // Calculate number of rows needed
    uint8_t missingCharLastRow = (uint8_t) (MAX_COLUMNS - (length % MAX_COLUMNS)); // Calculate number of missing characters in the last row

    int i, j;
    for (i = 0; i < numRows; i++) {
        for (j = 0; j < MAX_COLUMNS; j++) {
            int index = i * MAX_COLUMNS + j;
            if (index < length) {
                output[i * (MAX_COLUMNS) + j] = input[index];
            } else {
                output[i * (MAX_COLUMNS) + j] = missingCharLastRow; 
            }
        }
    }

    return numRows;
}

// Function to convert a hexadecimal character to its corresponding integer value
uint8_t hexCharToInt(char c) {
    if (c >= '0' && c <= '9')
        return c - '0';
    else if (c >= 'a' && c <= 'f')
        return c - 'a' + 10;
    else if (c >= 'A' && c <= 'F')
        return c - 'A' + 10;
    else
        return 0; // Error: invalid character
}

int splitHexToBytes(char* hexString,uint8_t* output) {
    size_t length = strlen(hexString);
    size_t numChunks = (length + 31) / 32; // Calculate the number of chunks (32 characters each)

    for (size_t i = 0; i < numChunks; i++) {
        // Convert each 2 hexadecimal characters to a uint8_t
        for (size_t j = 0; j < 16; j++) {
            size_t index = i * 32 + j * 2;
            if (index < length) {
                uint8_t highNibble = hexCharToInt(*(hexString + index));
                uint8_t lowNibble = hexCharToInt(*(hexString + index + 1));
                output[i * (32) + j] = (highNibble << 4) | lowNibble;
            } else {
                // If the string ends before completing 32 characters, fill remaining bytes with 0
                output[i * (32) + j] = 0;
            }
        }
    }
    return numChunks;
}