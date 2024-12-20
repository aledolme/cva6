#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x49, 0x6, 0xa2, 0x2b, 0x76, 0x57, 0x5e, 0x1, 0x3d, 0x7e, 0x44, 0x74, 0x13, 0x57, 0xf2, 0xea};
    uint8_t data[16] = {0x50, 0x46, 0x2c, 0x3c, 0xf4, 0x81, 0xaf, 0xc2, 0x3c, 0xff, 0x6c, 0x8, 0xa2, 0x47, 0xf1, 0x12};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
