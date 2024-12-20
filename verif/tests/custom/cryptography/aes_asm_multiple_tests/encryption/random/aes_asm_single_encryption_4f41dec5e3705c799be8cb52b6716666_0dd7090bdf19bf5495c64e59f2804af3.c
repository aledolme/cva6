#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd, 0xd7, 0x9, 0xb, 0xdf, 0x19, 0xbf, 0x54, 0x95, 0xc6, 0x4e, 0x59, 0xf2, 0x80, 0x4a, 0xf3};
    uint8_t data[16] = {0x4f, 0x41, 0xde, 0xc5, 0xe3, 0x70, 0x5c, 0x79, 0x9b, 0xe8, 0xcb, 0x52, 0xb6, 0x71, 0x66, 0x66};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
