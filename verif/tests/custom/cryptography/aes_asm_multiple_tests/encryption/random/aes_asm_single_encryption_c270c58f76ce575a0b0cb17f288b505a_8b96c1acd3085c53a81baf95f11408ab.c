#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x8b, 0x96, 0xc1, 0xac, 0xd3, 0x8, 0x5c, 0x53, 0xa8, 0x1b, 0xaf, 0x95, 0xf1, 0x14, 0x8, 0xab};
    uint8_t data[16] = {0xc2, 0x70, 0xc5, 0x8f, 0x76, 0xce, 0x57, 0x5a, 0xb, 0xc, 0xb1, 0x7f, 0x28, 0x8b, 0x50, 0x5a};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}