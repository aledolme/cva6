#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xcd, 0x75, 0xf0, 0x83, 0xce, 0x47, 0x75, 0x39, 0x10, 0x91, 0x9b, 0x1f, 0x54, 0x12, 0x9c, 0x5d};
    uint8_t data[16] = {0x7d, 0xf1, 0x1c, 0x4d, 0xde, 0x8b, 0x23, 0xa1, 0x5d, 0x44, 0xe1, 0x38, 0xd5, 0x5a, 0x9f, 0xae};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}