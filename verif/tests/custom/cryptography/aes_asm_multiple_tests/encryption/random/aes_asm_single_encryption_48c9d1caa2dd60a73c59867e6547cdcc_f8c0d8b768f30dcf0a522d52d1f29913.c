#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xf8, 0xc0, 0xd8, 0xb7, 0x68, 0xf3, 0xd, 0xcf, 0xa, 0x52, 0x2d, 0x52, 0xd1, 0xf2, 0x99, 0x13};
    uint8_t data[16] = {0x48, 0xc9, 0xd1, 0xca, 0xa2, 0xdd, 0x60, 0xa7, 0x3c, 0x59, 0x86, 0x7e, 0x65, 0x47, 0xcd, 0xcc};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}