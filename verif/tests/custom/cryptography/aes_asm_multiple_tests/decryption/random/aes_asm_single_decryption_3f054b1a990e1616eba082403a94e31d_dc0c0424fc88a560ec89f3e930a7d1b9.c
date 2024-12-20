#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xdc, 0xc, 0x4, 0x24, 0xfc, 0x88, 0xa5, 0x60, 0xec, 0x89, 0xf3, 0xe9, 0x30, 0xa7, 0xd1, 0xb9};
    uint8_t data[16] = {0x3f, 0x5, 0x4b, 0x1a, 0x99, 0xe, 0x16, 0x16, 0xeb, 0xa0, 0x82, 0x40, 0x3a, 0x94, 0xe3, 0x1d};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
