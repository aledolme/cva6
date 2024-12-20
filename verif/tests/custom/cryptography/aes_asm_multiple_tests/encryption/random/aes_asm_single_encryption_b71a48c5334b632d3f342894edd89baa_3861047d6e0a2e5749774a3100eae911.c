#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x38, 0x61, 0x4, 0x7d, 0x6e, 0xa, 0x2e, 0x57, 0x49, 0x77, 0x4a, 0x31, 0x0, 0xea, 0xe9, 0x11};
    uint8_t data[16] = {0xb7, 0x1a, 0x48, 0xc5, 0x33, 0x4b, 0x63, 0x2d, 0x3f, 0x34, 0x28, 0x94, 0xed, 0xd8, 0x9b, 0xaa};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
