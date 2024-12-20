#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x76, 0x33, 0x2, 0xf1, 0x2f, 0x43, 0xee, 0x41, 0xf5, 0x27, 0x74, 0xc9, 0x93, 0xfa, 0x7c, 0xad};
    uint8_t data[16] = {0xff, 0x29, 0xb3, 0xec, 0x60, 0x23, 0xd8, 0xfc, 0x5a, 0xaf, 0x14, 0xbc, 0xe9, 0x6b, 0x20, 0x24};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
