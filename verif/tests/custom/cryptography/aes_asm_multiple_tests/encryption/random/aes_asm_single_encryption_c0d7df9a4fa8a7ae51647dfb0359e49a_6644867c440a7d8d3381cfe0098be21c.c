#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x66, 0x44, 0x86, 0x7c, 0x44, 0xa, 0x7d, 0x8d, 0x33, 0x81, 0xcf, 0xe0, 0x9, 0x8b, 0xe2, 0x1c};
    uint8_t data[16] = {0xc0, 0xd7, 0xdf, 0x9a, 0x4f, 0xa8, 0xa7, 0xae, 0x51, 0x64, 0x7d, 0xfb, 0x3, 0x59, 0xe4, 0x9a};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
