#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x51, 0x88, 0xa1, 0x80, 0x2d, 0x67, 0xd6, 0xb7, 0xe1, 0xf1, 0xed, 0xc6, 0xb7, 0x4c, 0xd8, 0x82};
    uint8_t data[16] = {0x3c, 0x54, 0x14, 0xa2, 0xdd, 0x7f, 0x42, 0x61, 0x2c, 0x6a, 0x10, 0x46, 0x16, 0xf9, 0x66, 0x9b};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
