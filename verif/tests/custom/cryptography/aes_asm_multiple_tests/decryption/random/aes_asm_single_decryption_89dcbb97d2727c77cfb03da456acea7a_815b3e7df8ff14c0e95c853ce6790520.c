#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x81, 0x5b, 0x3e, 0x7d, 0xf8, 0xff, 0x14, 0xc0, 0xe9, 0x5c, 0x85, 0x3c, 0xe6, 0x79, 0x5, 0x20};
    uint8_t data[16] = {0x89, 0xdc, 0xbb, 0x97, 0xd2, 0x72, 0x7c, 0x77, 0xcf, 0xb0, 0x3d, 0xa4, 0x56, 0xac, 0xea, 0x7a};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
