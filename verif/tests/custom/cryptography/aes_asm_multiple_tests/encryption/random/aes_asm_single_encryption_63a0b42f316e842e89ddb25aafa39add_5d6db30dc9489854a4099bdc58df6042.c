#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x5d, 0x6d, 0xb3, 0xd, 0xc9, 0x48, 0x98, 0x54, 0xa4, 0x9, 0x9b, 0xdc, 0x58, 0xdf, 0x60, 0x42};
    uint8_t data[16] = {0x63, 0xa0, 0xb4, 0x2f, 0x31, 0x6e, 0x84, 0x2e, 0x89, 0xdd, 0xb2, 0x5a, 0xaf, 0xa3, 0x9a, 0xdd};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}