#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x56, 0x9, 0xd4, 0x79, 0x70, 0x26, 0xc4, 0x8d, 0x7, 0xfc, 0xa, 0x9c, 0x81, 0x8b, 0x96, 0x61};
    uint8_t data[16] = {0x25, 0x9d, 0x37, 0x96, 0x4f, 0x10, 0xc7, 0x6f, 0x13, 0xd3, 0x20, 0xfc, 0x92, 0x3c, 0xc6, 0x5d};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}