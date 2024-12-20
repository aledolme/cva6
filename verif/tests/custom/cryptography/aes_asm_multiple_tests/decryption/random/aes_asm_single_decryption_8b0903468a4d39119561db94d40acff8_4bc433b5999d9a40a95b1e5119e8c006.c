#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x4b, 0xc4, 0x33, 0xb5, 0x99, 0x9d, 0x9a, 0x40, 0xa9, 0x5b, 0x1e, 0x51, 0x19, 0xe8, 0xc0, 0x6};
    uint8_t data[16] = {0x8b, 0x9, 0x3, 0x46, 0x8a, 0x4d, 0x39, 0x11, 0x95, 0x61, 0xdb, 0x94, 0xd4, 0xa, 0xcf, 0xf8};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
