#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x6, 0x81, 0xdd, 0xd4, 0x6e, 0x74, 0xf1, 0xdc, 0x2d, 0xc5, 0x58, 0xa, 0x37, 0x4a, 0xe, 0x76};
    uint8_t data[16] = {0xfc, 0xe3, 0xa5, 0xb1, 0x8b, 0x1, 0xd9, 0xb0, 0x0, 0xec, 0x9e, 0xa9, 0xbd, 0xbf, 0x84, 0xfe};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}