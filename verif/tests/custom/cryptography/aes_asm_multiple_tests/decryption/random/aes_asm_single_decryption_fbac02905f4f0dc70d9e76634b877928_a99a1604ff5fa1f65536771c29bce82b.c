#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xa9, 0x9a, 0x16, 0x4, 0xff, 0x5f, 0xa1, 0xf6, 0x55, 0x36, 0x77, 0x1c, 0x29, 0xbc, 0xe8, 0x2b};
    uint8_t data[16] = {0xfb, 0xac, 0x2, 0x90, 0x5f, 0x4f, 0xd, 0xc7, 0xd, 0x9e, 0x76, 0x63, 0x4b, 0x87, 0x79, 0x28};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
