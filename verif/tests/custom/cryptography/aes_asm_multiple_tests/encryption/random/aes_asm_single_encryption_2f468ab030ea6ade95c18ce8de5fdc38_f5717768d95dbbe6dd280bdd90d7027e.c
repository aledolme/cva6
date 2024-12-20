#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xf5, 0x71, 0x77, 0x68, 0xd9, 0x5d, 0xbb, 0xe6, 0xdd, 0x28, 0xb, 0xdd, 0x90, 0xd7, 0x2, 0x7e};
    uint8_t data[16] = {0x2f, 0x46, 0x8a, 0xb0, 0x30, 0xea, 0x6a, 0xde, 0x95, 0xc1, 0x8c, 0xe8, 0xde, 0x5f, 0xdc, 0x38};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
