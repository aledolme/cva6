#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x39, 0x54, 0xf6, 0xd2, 0x91, 0x4b, 0x3d, 0x87, 0xda, 0x90, 0x98, 0x93, 0x61, 0xdf, 0x88, 0x75};
    uint8_t data[16] = {0x4c, 0xb4, 0xec, 0x34, 0x20, 0x64, 0xc, 0x63, 0x85, 0x4f, 0x70, 0xbe, 0x26, 0x9b, 0xf3, 0x45};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}