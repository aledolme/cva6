#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x24, 0x3a, 0xcd, 0x72, 0x25, 0x8a, 0x40, 0x9c, 0x40, 0x6d, 0xe0, 0x7a, 0x6a, 0xc2, 0xb5, 0x1};
    uint8_t data[16] = {0xde, 0x27, 0x84, 0x84, 0x7e, 0x3e, 0x77, 0x79, 0x84, 0x23, 0x60, 0x8, 0x74, 0x4e, 0x6f, 0xe5};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}