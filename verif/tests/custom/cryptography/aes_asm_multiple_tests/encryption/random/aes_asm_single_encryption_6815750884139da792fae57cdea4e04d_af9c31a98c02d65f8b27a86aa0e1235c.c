#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xaf, 0x9c, 0x31, 0xa9, 0x8c, 0x2, 0xd6, 0x5f, 0x8b, 0x27, 0xa8, 0x6a, 0xa0, 0xe1, 0x23, 0x5c};
    uint8_t data[16] = {0x68, 0x15, 0x75, 0x8, 0x84, 0x13, 0x9d, 0xa7, 0x92, 0xfa, 0xe5, 0x7c, 0xde, 0xa4, 0xe0, 0x4d};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
