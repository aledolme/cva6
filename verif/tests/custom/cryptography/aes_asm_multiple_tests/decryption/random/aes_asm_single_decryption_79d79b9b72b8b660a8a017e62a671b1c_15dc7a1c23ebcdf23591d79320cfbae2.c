#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x15, 0xdc, 0x7a, 0x1c, 0x23, 0xeb, 0xcd, 0xf2, 0x35, 0x91, 0xd7, 0x93, 0x20, 0xcf, 0xba, 0xe2};
    uint8_t data[16] = {0x79, 0xd7, 0x9b, 0x9b, 0x72, 0xb8, 0xb6, 0x60, 0xa8, 0xa0, 0x17, 0xe6, 0x2a, 0x67, 0x1b, 0x1c};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}