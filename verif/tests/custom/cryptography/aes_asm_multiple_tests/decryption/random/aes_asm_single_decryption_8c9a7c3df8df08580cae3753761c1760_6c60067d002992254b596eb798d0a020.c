#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x6c, 0x60, 0x6, 0x7d, 0x0, 0x29, 0x92, 0x25, 0x4b, 0x59, 0x6e, 0xb7, 0x98, 0xd0, 0xa0, 0x20};
    uint8_t data[16] = {0x8c, 0x9a, 0x7c, 0x3d, 0xf8, 0xdf, 0x8, 0x58, 0xc, 0xae, 0x37, 0x53, 0x76, 0x1c, 0x17, 0x60};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
