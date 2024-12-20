#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xdf, 0xa3, 0xed, 0x6e, 0x23, 0x57, 0x32, 0x85, 0x86, 0xec, 0xb, 0x29, 0xa2, 0xbb, 0x7b, 0xd6};
    uint8_t data[16] = {0x6, 0x9c, 0xb9, 0x7d, 0xff, 0x73, 0xd7, 0x2d, 0x22, 0x41, 0x87, 0x39, 0x7e, 0x9, 0x1a, 0xd5};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
