#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd0, 0x36, 0xf4, 0x47, 0x8d, 0x78, 0xbf, 0x65, 0x94, 0x1e, 0x58, 0x4a, 0xe1, 0x4b, 0xc6, 0xb3};
    uint8_t data[16] = {0x87, 0xd5, 0x2f, 0xf7, 0x94, 0xf4, 0x19, 0xb2, 0x79, 0xb1, 0x4c, 0x8, 0x52, 0xaf, 0xca, 0x2d};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
