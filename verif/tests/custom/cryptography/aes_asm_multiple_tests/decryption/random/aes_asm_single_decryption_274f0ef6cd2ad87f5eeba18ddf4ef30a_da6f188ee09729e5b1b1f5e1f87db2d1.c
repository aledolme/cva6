#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xda, 0x6f, 0x18, 0x8e, 0xe0, 0x97, 0x29, 0xe5, 0xb1, 0xb1, 0xf5, 0xe1, 0xf8, 0x7d, 0xb2, 0xd1};
    uint8_t data[16] = {0x27, 0x4f, 0xe, 0xf6, 0xcd, 0x2a, 0xd8, 0x7f, 0x5e, 0xeb, 0xa1, 0x8d, 0xdf, 0x4e, 0xf3, 0xa};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}