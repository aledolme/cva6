#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xc6, 0xf, 0xd9, 0x1d, 0x74, 0x54, 0x88, 0xfa, 0x86, 0x2a, 0x21, 0xcf, 0x3f, 0x18, 0x27, 0x70};
    uint8_t data[16] = {0x46, 0xa0, 0x2d, 0xde, 0xe2, 0x24, 0xe3, 0xb1, 0x27, 0xe2, 0x4a, 0xcb, 0xe2, 0xa9, 0xb2, 0x75};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}