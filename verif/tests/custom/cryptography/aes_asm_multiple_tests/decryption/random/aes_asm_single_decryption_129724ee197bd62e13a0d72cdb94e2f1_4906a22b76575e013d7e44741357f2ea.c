#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x49, 0x6, 0xa2, 0x2b, 0x76, 0x57, 0x5e, 0x1, 0x3d, 0x7e, 0x44, 0x74, 0x13, 0x57, 0xf2, 0xea};
    uint8_t data[16] = {0x12, 0x97, 0x24, 0xee, 0x19, 0x7b, 0xd6, 0x2e, 0x13, 0xa0, 0xd7, 0x2c, 0xdb, 0x94, 0xe2, 0xf1};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}