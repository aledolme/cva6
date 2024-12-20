#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xdc, 0x50, 0xd7, 0x9e, 0xd0, 0xfc, 0x28, 0x93, 0x23, 0x87, 0xb2, 0x26, 0x2d, 0xad, 0xa7, 0x27};
    uint8_t data[16] = {0xc2, 0xd4, 0xb7, 0xf4, 0x4f, 0x3, 0x5f, 0x91, 0x59, 0xa4, 0x13, 0x37, 0xb6, 0x62, 0xff, 0x4d};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
