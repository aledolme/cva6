#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x8a, 0xae, 0x7d, 0x6e, 0xed, 0x15, 0xd5, 0x55, 0x89, 0xb6, 0x7, 0x3f, 0xe, 0x2c, 0xc6, 0x90};
    uint8_t data[16] = {0x8d, 0x15, 0x9, 0x40, 0xcb, 0x6e, 0x9, 0xab, 0x22, 0xd4, 0xa, 0xf8, 0xad, 0x1f, 0x1c, 0x2d};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}