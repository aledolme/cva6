#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xbb, 0xc6, 0x8, 0x44, 0x90, 0xc8, 0x94, 0x51, 0xda, 0xe0, 0xa, 0xfa, 0xbb, 0x58, 0x89, 0xcb};
    uint8_t data[16] = {0xd6, 0x1f, 0x8b, 0xc9, 0x33, 0x35, 0x65, 0xbf, 0xff, 0x68, 0xef, 0x5a, 0xa8, 0xc6, 0x7d, 0x68};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
