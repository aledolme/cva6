#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x8b, 0x96, 0xc1, 0xac, 0xd3, 0x8, 0x5c, 0x53, 0xa8, 0x1b, 0xaf, 0x95, 0xf1, 0x14, 0x8, 0xab};
    uint8_t data[16] = {0x2, 0x31, 0xbb, 0x3a, 0xcc, 0xce, 0x78, 0xd2, 0x65, 0x8d, 0x55, 0x5f, 0x53, 0x2e, 0x9b, 0x1a};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}