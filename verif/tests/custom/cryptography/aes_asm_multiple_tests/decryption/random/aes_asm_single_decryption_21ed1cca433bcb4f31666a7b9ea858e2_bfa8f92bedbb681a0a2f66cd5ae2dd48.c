#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xbf, 0xa8, 0xf9, 0x2b, 0xed, 0xbb, 0x68, 0x1a, 0xa, 0x2f, 0x66, 0xcd, 0x5a, 0xe2, 0xdd, 0x48};
    uint8_t data[16] = {0x21, 0xed, 0x1c, 0xca, 0x43, 0x3b, 0xcb, 0x4f, 0x31, 0x66, 0x6a, 0x7b, 0x9e, 0xa8, 0x58, 0xe2};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}