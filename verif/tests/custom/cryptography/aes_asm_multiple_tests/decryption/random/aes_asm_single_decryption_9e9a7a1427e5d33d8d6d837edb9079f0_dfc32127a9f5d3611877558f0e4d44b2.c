#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xdf, 0xc3, 0x21, 0x27, 0xa9, 0xf5, 0xd3, 0x61, 0x18, 0x77, 0x55, 0x8f, 0xe, 0x4d, 0x44, 0xb2};
    uint8_t data[16] = {0x9e, 0x9a, 0x7a, 0x14, 0x27, 0xe5, 0xd3, 0x3d, 0x8d, 0x6d, 0x83, 0x7e, 0xdb, 0x90, 0x79, 0xf0};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}