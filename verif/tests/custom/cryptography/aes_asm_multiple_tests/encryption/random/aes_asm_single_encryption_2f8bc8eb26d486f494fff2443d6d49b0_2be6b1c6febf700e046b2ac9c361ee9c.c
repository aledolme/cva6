#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2b, 0xe6, 0xb1, 0xc6, 0xfe, 0xbf, 0x70, 0xe, 0x4, 0x6b, 0x2a, 0xc9, 0xc3, 0x61, 0xee, 0x9c};
    uint8_t data[16] = {0x2f, 0x8b, 0xc8, 0xeb, 0x26, 0xd4, 0x86, 0xf4, 0x94, 0xff, 0xf2, 0x44, 0x3d, 0x6d, 0x49, 0xb0};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}