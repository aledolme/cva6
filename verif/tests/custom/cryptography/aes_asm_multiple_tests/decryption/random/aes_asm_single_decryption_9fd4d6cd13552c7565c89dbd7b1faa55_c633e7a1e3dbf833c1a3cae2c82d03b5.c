#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xc6, 0x33, 0xe7, 0xa1, 0xe3, 0xdb, 0xf8, 0x33, 0xc1, 0xa3, 0xca, 0xe2, 0xc8, 0x2d, 0x3, 0xb5};
    uint8_t data[16] = {0x9f, 0xd4, 0xd6, 0xcd, 0x13, 0x55, 0x2c, 0x75, 0x65, 0xc8, 0x9d, 0xbd, 0x7b, 0x1f, 0xaa, 0x55};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}