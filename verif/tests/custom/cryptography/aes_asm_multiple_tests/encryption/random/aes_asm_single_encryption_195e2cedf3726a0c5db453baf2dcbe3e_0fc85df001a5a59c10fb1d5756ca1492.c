#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xf, 0xc8, 0x5d, 0xf0, 0x1, 0xa5, 0xa5, 0x9c, 0x10, 0xfb, 0x1d, 0x57, 0x56, 0xca, 0x14, 0x92};
    uint8_t data[16] = {0x19, 0x5e, 0x2c, 0xed, 0xf3, 0x72, 0x6a, 0xc, 0x5d, 0xb4, 0x53, 0xba, 0xf2, 0xdc, 0xbe, 0x3e};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}