#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x58, 0x47, 0x57, 0xb1, 0xee, 0x89, 0xf8, 0xfa, 0x2e, 0x1b, 0x30, 0xf5, 0x46, 0x11, 0x73, 0x5e};
    uint8_t data[16] = {0x2c, 0x8b, 0xd9, 0x3b, 0xd8, 0x0, 0xe4, 0x29, 0x36, 0xec, 0xfa, 0xd1, 0xac, 0x25, 0xcc, 0x3b};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}