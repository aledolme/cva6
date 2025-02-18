#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x56, 0xde, 0x20, 0xb7, 0x3c, 0x9c, 0x20, 0xa6, 0x20, 0x92, 0x38, 0x76, 0xc, 0x1a, 0xb6, 0xa7};
    uint8_t data[16] = {0x24, 0x12, 0xc3, 0x71, 0x1, 0xa5, 0x8a, 0xe9, 0xa0, 0x1d, 0x9f, 0x42, 0x88, 0xe1, 0xa4, 0xb7};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
