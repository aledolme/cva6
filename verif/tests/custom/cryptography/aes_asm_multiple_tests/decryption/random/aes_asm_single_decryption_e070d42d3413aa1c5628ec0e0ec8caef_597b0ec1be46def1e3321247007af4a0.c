#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x59, 0x7b, 0xe, 0xc1, 0xbe, 0x46, 0xde, 0xf1, 0xe3, 0x32, 0x12, 0x47, 0x0, 0x7a, 0xf4, 0xa0};
    uint8_t data[16] = {0xe0, 0x70, 0xd4, 0x2d, 0x34, 0x13, 0xaa, 0x1c, 0x56, 0x28, 0xec, 0xe, 0xe, 0xc8, 0xca, 0xef};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
