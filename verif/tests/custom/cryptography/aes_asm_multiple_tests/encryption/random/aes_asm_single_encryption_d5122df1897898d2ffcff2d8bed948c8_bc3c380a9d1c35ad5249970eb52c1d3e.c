#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xbc, 0x3c, 0x38, 0xa, 0x9d, 0x1c, 0x35, 0xad, 0x52, 0x49, 0x97, 0xe, 0xb5, 0x2c, 0x1d, 0x3e};
    uint8_t data[16] = {0xd5, 0x12, 0x2d, 0xf1, 0x89, 0x78, 0x98, 0xd2, 0xff, 0xcf, 0xf2, 0xd8, 0xbe, 0xd9, 0x48, 0xc8};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
