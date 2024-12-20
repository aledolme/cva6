#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xcc, 0xcf, 0x2d, 0xb3, 0x5d, 0x25, 0x30, 0x18, 0xe2, 0xf9, 0xcc, 0x2e, 0xb, 0x54, 0x80, 0xc7};
    uint8_t data[16] = {0x76, 0xb4, 0x30, 0x38, 0x41, 0x47, 0xd3, 0x71, 0xa5, 0x85, 0xa2, 0x9a, 0xf8, 0xdb, 0x7a, 0x44};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
