#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xc2, 0x5d, 0xab, 0x71, 0x9f, 0xf9, 0x14, 0x85, 0x7f, 0x8a, 0x61, 0x24, 0x44, 0xac, 0x73, 0x1};
    uint8_t data[16] = {0xd8, 0xe, 0xed, 0x74, 0xcf, 0x74, 0xe7, 0xba, 0x3a, 0x13, 0xab, 0x8a, 0xe8, 0x7c, 0xea, 0x3c};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}