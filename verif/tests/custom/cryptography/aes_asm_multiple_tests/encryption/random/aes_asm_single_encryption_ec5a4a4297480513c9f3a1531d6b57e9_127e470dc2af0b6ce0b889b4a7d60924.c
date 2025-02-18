#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x12, 0x7e, 0x47, 0xd, 0xc2, 0xaf, 0xb, 0x6c, 0xe0, 0xb8, 0x89, 0xb4, 0xa7, 0xd6, 0x9, 0x24};
    uint8_t data[16] = {0xec, 0x5a, 0x4a, 0x42, 0x97, 0x48, 0x5, 0x13, 0xc9, 0xf3, 0xa1, 0x53, 0x1d, 0x6b, 0x57, 0xe9};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
