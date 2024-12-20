#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x3e, 0x59, 0xf9, 0x73, 0xa9, 0xf6, 0x38, 0xe5, 0x2a, 0x1a, 0xc, 0xb7, 0x8a, 0x18, 0xe, 0x6e};
    uint8_t data[16] = {0x2c, 0xc1, 0x10, 0x76, 0x6c, 0x4, 0x78, 0x5a, 0x29, 0x8d, 0x36, 0xa3, 0xfc, 0x9b, 0x16, 0x6f};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
