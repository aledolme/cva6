#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xb, 0xf, 0xd6, 0xd2, 0x66, 0xc7, 0xeb, 0x2d, 0x8a, 0x5c, 0x6e, 0x66, 0xdf, 0xe9, 0x5, 0x9f};
    uint8_t data[16] = {0x66, 0x41, 0xf6, 0x54, 0x8e, 0xcb, 0x78, 0x4, 0xf5, 0xbe, 0x7, 0x44, 0x8d, 0x58, 0x55, 0x93};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
