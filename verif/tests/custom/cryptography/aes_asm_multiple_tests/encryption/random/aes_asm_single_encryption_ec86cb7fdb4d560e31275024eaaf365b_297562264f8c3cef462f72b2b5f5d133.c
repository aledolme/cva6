#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x29, 0x75, 0x62, 0x26, 0x4f, 0x8c, 0x3c, 0xef, 0x46, 0x2f, 0x72, 0xb2, 0xb5, 0xf5, 0xd1, 0x33};
    uint8_t data[16] = {0xec, 0x86, 0xcb, 0x7f, 0xdb, 0x4d, 0x56, 0xe, 0x31, 0x27, 0x50, 0x24, 0xea, 0xaf, 0x36, 0x5b};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}