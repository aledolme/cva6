#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x26, 0x66, 0xe6, 0xdc, 0x5a, 0x89, 0x78, 0x1a, 0x37, 0x2e, 0x14, 0xb4, 0x69, 0x76, 0x91, 0x1a};
    uint8_t data[16] = {0x78, 0x30, 0x31, 0x6, 0x30, 0x6c, 0xa0, 0x32, 0x25, 0x6, 0xa2, 0x2c, 0xc5, 0xc5, 0x8c, 0x8a};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}