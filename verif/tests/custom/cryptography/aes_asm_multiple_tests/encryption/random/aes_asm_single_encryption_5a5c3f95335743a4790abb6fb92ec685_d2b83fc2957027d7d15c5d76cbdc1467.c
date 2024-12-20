#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd2, 0xb8, 0x3f, 0xc2, 0x95, 0x70, 0x27, 0xd7, 0xd1, 0x5c, 0x5d, 0x76, 0xcb, 0xdc, 0x14, 0x67};
    uint8_t data[16] = {0x5a, 0x5c, 0x3f, 0x95, 0x33, 0x57, 0x43, 0xa4, 0x79, 0xa, 0xbb, 0x6f, 0xb9, 0x2e, 0xc6, 0x85};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
