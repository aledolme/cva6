#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x0, 0x9c, 0x51, 0xb8, 0xc1, 0x5e, 0x29, 0xd, 0xb7, 0x97, 0xbd, 0x39, 0x5, 0x72, 0x23, 0x7};
    uint8_t data[16] = {0x1d, 0xb3, 0xcb, 0x4d, 0x4d, 0xf4, 0xd5, 0x2b, 0x86, 0x33, 0x33, 0xc2, 0xa5, 0x8a, 0x14, 0xdf};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}