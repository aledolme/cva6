#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x1d, 0x55, 0x1b, 0x3, 0x79, 0xb5, 0xe7, 0xf1, 0x25, 0x63, 0xfb, 0x19, 0x8b, 0x57, 0x1f, 0x29};
    uint8_t data[16] = {0xaa, 0xfc, 0x34, 0x2a, 0x6d, 0xb, 0xb, 0x7e, 0xe4, 0x64, 0x3b, 0xf, 0x6e, 0x49, 0xe4, 0x3a};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
