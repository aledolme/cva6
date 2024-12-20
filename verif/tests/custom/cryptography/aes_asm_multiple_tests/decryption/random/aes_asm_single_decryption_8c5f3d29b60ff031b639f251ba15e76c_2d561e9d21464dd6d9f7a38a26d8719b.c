#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2d, 0x56, 0x1e, 0x9d, 0x21, 0x46, 0x4d, 0xd6, 0xd9, 0xf7, 0xa3, 0x8a, 0x26, 0xd8, 0x71, 0x9b};
    uint8_t data[16] = {0x8c, 0x5f, 0x3d, 0x29, 0xb6, 0xf, 0xf0, 0x31, 0xb6, 0x39, 0xf2, 0x51, 0xba, 0x15, 0xe7, 0x6c};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
