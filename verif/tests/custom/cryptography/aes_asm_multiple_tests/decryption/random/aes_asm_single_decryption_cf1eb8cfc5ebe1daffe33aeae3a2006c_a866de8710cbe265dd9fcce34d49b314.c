#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xa8, 0x66, 0xde, 0x87, 0x10, 0xcb, 0xe2, 0x65, 0xdd, 0x9f, 0xcc, 0xe3, 0x4d, 0x49, 0xb3, 0x14};
    uint8_t data[16] = {0xcf, 0x1e, 0xb8, 0xcf, 0xc5, 0xeb, 0xe1, 0xda, 0xff, 0xe3, 0x3a, 0xea, 0xe3, 0xa2, 0x0, 0x6c};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}