#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xe2, 0x1e, 0xf0, 0x2a, 0xb1, 0x1f, 0xf, 0x5d, 0x51, 0x3, 0xc5, 0x1, 0x38, 0xfd, 0x3d, 0xcb};
    uint8_t data[16] = {0xaa, 0x91, 0x9a, 0xd0, 0x4a, 0x3c, 0xea, 0xa, 0x72, 0x1f, 0xaa, 0x28, 0x9b, 0xe9, 0x70, 0x80};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}