#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xde, 0x93, 0x9d, 0xd9, 0xa3, 0xad, 0x6a, 0x46, 0xa7, 0xe6, 0x9a, 0x1d, 0x3d, 0xcc, 0x13, 0x5c};
    uint8_t data[16] = {0x83, 0xbd, 0x5a, 0x69, 0x7d, 0x2d, 0x9c, 0x11, 0xc3, 0x20, 0xa3, 0xe3, 0x82, 0xcb, 0xd2, 0x87};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}