#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xa5, 0x60, 0x96, 0x70, 0xc8, 0xa6, 0x14, 0x10, 0x43, 0x62, 0x1, 0xcf, 0xe6, 0x40, 0x9a, 0x6e};
    uint8_t data[16] = {0xa7, 0xc5, 0xd6, 0x3f, 0xe6, 0xf4, 0xd, 0x5c, 0x25, 0xc5, 0xce, 0x57, 0x22, 0xd4, 0x71, 0xa4};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}