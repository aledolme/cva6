#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x5e, 0x99, 0x2b, 0xf0, 0xd4, 0xb9, 0x61, 0xfc, 0xd5, 0x57, 0x5b, 0x89, 0xbf, 0x72, 0xbe, 0x4d};
    uint8_t data[16] = {0x3, 0xfc, 0x34, 0x5a, 0xc6, 0x14, 0xda, 0x3d, 0x1f, 0x44, 0xa5, 0x8e, 0xb4, 0xae, 0x1c, 0xea};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}