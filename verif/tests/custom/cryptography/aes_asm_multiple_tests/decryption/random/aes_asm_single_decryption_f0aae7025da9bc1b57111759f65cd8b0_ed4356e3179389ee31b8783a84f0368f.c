#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xed, 0x43, 0x56, 0xe3, 0x17, 0x93, 0x89, 0xee, 0x31, 0xb8, 0x78, 0x3a, 0x84, 0xf0, 0x36, 0x8f};
    uint8_t data[16] = {0xf0, 0xaa, 0xe7, 0x2, 0x5d, 0xa9, 0xbc, 0x1b, 0x57, 0x11, 0x17, 0x59, 0xf6, 0x5c, 0xd8, 0xb0};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}