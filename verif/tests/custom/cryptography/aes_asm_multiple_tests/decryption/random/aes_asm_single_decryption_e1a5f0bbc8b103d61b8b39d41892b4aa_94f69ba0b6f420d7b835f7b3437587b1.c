#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x94, 0xf6, 0x9b, 0xa0, 0xb6, 0xf4, 0x20, 0xd7, 0xb8, 0x35, 0xf7, 0xb3, 0x43, 0x75, 0x87, 0xb1};
    uint8_t data[16] = {0xe1, 0xa5, 0xf0, 0xbb, 0xc8, 0xb1, 0x3, 0xd6, 0x1b, 0x8b, 0x39, 0xd4, 0x18, 0x92, 0xb4, 0xaa};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}