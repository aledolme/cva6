#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xc6, 0x5c, 0xe2, 0x7d, 0xea, 0xe4, 0xf3, 0x29, 0xdb, 0x71, 0xcf, 0xf4, 0x6a, 0xac, 0x47, 0xc5};
    uint8_t data[16] = {0x81, 0xb0, 0xb2, 0xfb, 0x18, 0x52, 0xd2, 0x42, 0x52, 0xac, 0xc7, 0x1b, 0xba, 0x40, 0xef, 0xf1};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}