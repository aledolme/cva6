#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xda, 0x35, 0x78, 0x1c, 0x28, 0xea, 0xd7, 0x69, 0x47, 0x37, 0xae, 0x5f, 0x27, 0x14, 0xde, 0x18};
    uint8_t data[16] = {0xcf, 0x8c, 0xc1, 0xf0, 0x7, 0xa6, 0x78, 0xde, 0xa7, 0x9d, 0xd6, 0xa6, 0xf9, 0xa7, 0x6d, 0xbb};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}