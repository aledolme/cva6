#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x9f, 0xe, 0x7b, 0xcd, 0xd8, 0xaf, 0x2c, 0x83, 0xf7, 0x52, 0xc6, 0x16, 0xaa, 0xec, 0xbc, 0xf7};
    uint8_t data[16] = {0xce, 0x71, 0x8e, 0x5, 0xe7, 0x84, 0xff, 0x49, 0xe1, 0xea, 0x67, 0xb9, 0x53, 0xd6, 0xa4, 0x5e};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}