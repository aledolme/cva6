#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2c, 0xca, 0x66, 0x8d, 0x9e, 0x3a, 0x1a, 0x16, 0x71, 0xd5, 0x1a, 0x90, 0xc, 0x7d, 0xbb, 0xb0};
    uint8_t data[16] = {0xfc, 0xa0, 0xf9, 0xfe, 0xe2, 0x13, 0xc, 0x7d, 0x5e, 0x21, 0x17, 0x72, 0x70, 0xcc, 0x37, 0x22};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}