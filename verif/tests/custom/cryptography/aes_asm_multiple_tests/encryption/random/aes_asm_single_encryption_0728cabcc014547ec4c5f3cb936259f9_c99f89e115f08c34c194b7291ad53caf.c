#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xc9, 0x9f, 0x89, 0xe1, 0x15, 0xf0, 0x8c, 0x34, 0xc1, 0x94, 0xb7, 0x29, 0x1a, 0xd5, 0x3c, 0xaf};
    uint8_t data[16] = {0x7, 0x28, 0xca, 0xbc, 0xc0, 0x14, 0x54, 0x7e, 0xc4, 0xc5, 0xf3, 0xcb, 0x93, 0x62, 0x59, 0xf9};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}