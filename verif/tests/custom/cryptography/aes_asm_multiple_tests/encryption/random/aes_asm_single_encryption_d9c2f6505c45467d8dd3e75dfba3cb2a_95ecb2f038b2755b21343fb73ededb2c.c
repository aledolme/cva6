#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x95, 0xec, 0xb2, 0xf0, 0x38, 0xb2, 0x75, 0x5b, 0x21, 0x34, 0x3f, 0xb7, 0x3e, 0xde, 0xdb, 0x2c};
    uint8_t data[16] = {0xd9, 0xc2, 0xf6, 0x50, 0x5c, 0x45, 0x46, 0x7d, 0x8d, 0xd3, 0xe7, 0x5d, 0xfb, 0xa3, 0xcb, 0x2a};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}