#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xb2, 0x30, 0x25, 0xfa, 0x61, 0x90, 0x90, 0xef, 0x7c, 0x2, 0x9, 0x2a, 0xbf, 0x26, 0x49, 0x85};
    uint8_t data[16] = {0xc3, 0xc7, 0x79, 0x1b, 0xc3, 0xfc, 0x6a, 0x11, 0xbc, 0x94, 0x96, 0x2c, 0xda, 0xf5, 0xcf, 0xd3};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}