#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x5, 0x8d, 0x69, 0xd1, 0x6f, 0xa3, 0x1c, 0x4, 0xd7, 0xb3, 0x88, 0xcf, 0xff, 0xac, 0x44, 0x8d};
    uint8_t data[16] = {0x4f, 0xca, 0xd6, 0xf9, 0x98, 0x2a, 0xb0, 0x6e, 0xe0, 0xe, 0x70, 0x60, 0xf7, 0x67, 0xc3, 0x23};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}