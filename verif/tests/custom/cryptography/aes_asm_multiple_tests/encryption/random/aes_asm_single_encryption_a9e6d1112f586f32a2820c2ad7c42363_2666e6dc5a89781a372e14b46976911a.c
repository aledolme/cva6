#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x26, 0x66, 0xe6, 0xdc, 0x5a, 0x89, 0x78, 0x1a, 0x37, 0x2e, 0x14, 0xb4, 0x69, 0x76, 0x91, 0x1a};
    uint8_t data[16] = {0xa9, 0xe6, 0xd1, 0x11, 0x2f, 0x58, 0x6f, 0x32, 0xa2, 0x82, 0xc, 0x2a, 0xd7, 0xc4, 0x23, 0x63};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}