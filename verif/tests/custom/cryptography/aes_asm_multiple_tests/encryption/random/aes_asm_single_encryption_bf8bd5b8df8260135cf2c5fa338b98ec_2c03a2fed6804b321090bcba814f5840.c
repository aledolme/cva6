#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2c, 0x3, 0xa2, 0xfe, 0xd6, 0x80, 0x4b, 0x32, 0x10, 0x90, 0xbc, 0xba, 0x81, 0x4f, 0x58, 0x40};
    uint8_t data[16] = {0xbf, 0x8b, 0xd5, 0xb8, 0xdf, 0x82, 0x60, 0x13, 0x5c, 0xf2, 0xc5, 0xfa, 0x33, 0x8b, 0x98, 0xec};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}