#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x89, 0x9e, 0x46, 0x40, 0xa7, 0x6d, 0x42, 0x4e, 0xab, 0x9b, 0x90, 0xb1, 0x88, 0x67, 0x98, 0xc0};
    uint8_t data[16] = {0x97, 0xad, 0x8c, 0xc2, 0x42, 0x29, 0x6b, 0x5, 0x10, 0x53, 0x1c, 0xb3, 0xf4, 0x88, 0xc1, 0x70};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
