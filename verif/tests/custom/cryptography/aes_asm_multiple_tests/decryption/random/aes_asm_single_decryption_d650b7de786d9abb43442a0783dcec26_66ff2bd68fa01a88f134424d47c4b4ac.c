#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x66, 0xff, 0x2b, 0xd6, 0x8f, 0xa0, 0x1a, 0x88, 0xf1, 0x34, 0x42, 0x4d, 0x47, 0xc4, 0xb4, 0xac};
    uint8_t data[16] = {0xd6, 0x50, 0xb7, 0xde, 0x78, 0x6d, 0x9a, 0xbb, 0x43, 0x44, 0x2a, 0x7, 0x83, 0xdc, 0xec, 0x26};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}