// aes.h
#ifndef AES_H
#define AES_H

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

#define MAX_COLUMNS 16

extern uint32_t RoundKey[AES_keyExpSize];

void AES_Cipher(uint32_t* state, uint32_t* RoundKey);
void AES_InvCipher(uint32_t* state, uint32_t* RoundKey);
void KeyExpansion_ENC(uint32_t* RoundKey, uint8_t* Key);
void KeyExpansion_DEC(uint32_t* RoundKey, uint8_t* Key);

int stringToHexMatrix(char *input, uint8_t* output);
int splitHexToBytes(char* hexString, uint8_t* output);
uint8_t hexCharToInt(char c);

#endif // AES_H
