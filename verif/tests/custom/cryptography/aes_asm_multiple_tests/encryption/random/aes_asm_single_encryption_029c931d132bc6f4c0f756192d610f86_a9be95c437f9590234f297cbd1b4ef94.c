#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xa9, 0xbe, 0x95, 0xc4, 0x37, 0xf9, 0x59, 0x2, 0x34, 0xf2, 0x97, 0xcb, 0xd1, 0xb4, 0xef, 0x94};
    uint8_t data[16] = {0x2, 0x9c, 0x93, 0x1d, 0x13, 0x2b, 0xc6, 0xf4, 0xc0, 0xf7, 0x56, 0x19, 0x2d, 0x61, 0xf, 0x86};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
