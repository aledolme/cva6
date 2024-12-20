#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x1a, 0xcf, 0x79, 0xbb, 0x52, 0x18, 0xc2, 0x68, 0xaf, 0x5, 0x10, 0x7d, 0x5e, 0x48, 0x4d, 0xb7};
    uint8_t data[16] = {0xea, 0xaa, 0x5a, 0xe, 0x12, 0x8f, 0xe8, 0xb6, 0x94, 0x6c, 0x7e, 0xb5, 0xe9, 0xb6, 0xb4, 0xd0};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
