#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd4, 0xab, 0xc3, 0xa3, 0x75, 0xf8, 0x96, 0xad, 0xd3, 0xdb, 0xdb, 0xb6, 0xfb, 0xd3, 0xb9, 0xc1};
    uint8_t data[16] = {0x5d, 0x48, 0x9a, 0x12, 0x88, 0x13, 0x43, 0xe2, 0x2d, 0x6d, 0xb5, 0xeb, 0x6d, 0x6c, 0x0, 0x94};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}