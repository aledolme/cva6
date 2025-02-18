#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xc9, 0x12, 0xbf, 0xda, 0x87, 0x5b, 0x3, 0xab, 0x29, 0xf5, 0x7e, 0xec, 0x75, 0x13, 0x8d, 0x27};
    uint8_t data[16] = {0xb1, 0xce, 0xbe, 0x2f, 0xa3, 0x77, 0xa4, 0xaf, 0x1d, 0xd, 0x5d, 0xd9, 0x9f, 0x98, 0x6e, 0xce};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
