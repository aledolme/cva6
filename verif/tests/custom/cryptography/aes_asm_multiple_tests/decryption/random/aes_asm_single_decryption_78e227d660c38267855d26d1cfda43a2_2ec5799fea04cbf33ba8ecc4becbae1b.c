#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2e, 0xc5, 0x79, 0x9f, 0xea, 0x4, 0xcb, 0xf3, 0x3b, 0xa8, 0xec, 0xc4, 0xbe, 0xcb, 0xae, 0x1b};
    uint8_t data[16] = {0x78, 0xe2, 0x27, 0xd6, 0x60, 0xc3, 0x82, 0x67, 0x85, 0x5d, 0x26, 0xd1, 0xcf, 0xda, 0x43, 0xa2};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}