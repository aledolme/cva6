#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x6e, 0xf9, 0x4a, 0x73, 0xab, 0xc1, 0x5b, 0xa8, 0xec, 0x2b, 0xca, 0x9c, 0xf0, 0xc3, 0x9a, 0x30};
    uint8_t data[16] = {0xc4, 0x47, 0x3e, 0x2b, 0x4f, 0xf9, 0x58, 0xc4, 0xc5, 0xf8, 0xcc, 0x83, 0x1a, 0xc2, 0xea, 0x10};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}