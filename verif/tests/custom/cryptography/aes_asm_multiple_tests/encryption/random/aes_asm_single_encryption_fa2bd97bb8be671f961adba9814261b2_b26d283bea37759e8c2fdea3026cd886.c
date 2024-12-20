#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xb2, 0x6d, 0x28, 0x3b, 0xea, 0x37, 0x75, 0x9e, 0x8c, 0x2f, 0xde, 0xa3, 0x2, 0x6c, 0xd8, 0x86};
    uint8_t data[16] = {0xfa, 0x2b, 0xd9, 0x7b, 0xb8, 0xbe, 0x67, 0x1f, 0x96, 0x1a, 0xdb, 0xa9, 0x81, 0x42, 0x61, 0xb2};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
