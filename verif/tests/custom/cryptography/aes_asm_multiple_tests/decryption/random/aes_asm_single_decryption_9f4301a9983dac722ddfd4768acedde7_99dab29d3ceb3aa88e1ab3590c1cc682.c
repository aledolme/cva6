#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x99, 0xda, 0xb2, 0x9d, 0x3c, 0xeb, 0x3a, 0xa8, 0x8e, 0x1a, 0xb3, 0x59, 0xc, 0x1c, 0xc6, 0x82};
    uint8_t data[16] = {0x9f, 0x43, 0x1, 0xa9, 0x98, 0x3d, 0xac, 0x72, 0x2d, 0xdf, 0xd4, 0x76, 0x8a, 0xce, 0xdd, 0xe7};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
