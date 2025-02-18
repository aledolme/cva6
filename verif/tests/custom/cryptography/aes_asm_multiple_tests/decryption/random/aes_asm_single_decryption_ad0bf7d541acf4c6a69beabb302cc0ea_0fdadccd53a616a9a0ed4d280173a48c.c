#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xf, 0xda, 0xdc, 0xcd, 0x53, 0xa6, 0x16, 0xa9, 0xa0, 0xed, 0x4d, 0x28, 0x1, 0x73, 0xa4, 0x8c};
    uint8_t data[16] = {0xad, 0xb, 0xf7, 0xd5, 0x41, 0xac, 0xf4, 0xc6, 0xa6, 0x9b, 0xea, 0xbb, 0x30, 0x2c, 0xc0, 0xea};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
