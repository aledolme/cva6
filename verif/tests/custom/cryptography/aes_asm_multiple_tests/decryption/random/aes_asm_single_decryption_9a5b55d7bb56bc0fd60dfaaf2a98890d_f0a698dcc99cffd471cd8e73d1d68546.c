#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xf0, 0xa6, 0x98, 0xdc, 0xc9, 0x9c, 0xff, 0xd4, 0x71, 0xcd, 0x8e, 0x73, 0xd1, 0xd6, 0x85, 0x46};
    uint8_t data[16] = {0x9a, 0x5b, 0x55, 0xd7, 0xbb, 0x56, 0xbc, 0xf, 0xd6, 0xd, 0xfa, 0xaf, 0x2a, 0x98, 0x89, 0xd};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}