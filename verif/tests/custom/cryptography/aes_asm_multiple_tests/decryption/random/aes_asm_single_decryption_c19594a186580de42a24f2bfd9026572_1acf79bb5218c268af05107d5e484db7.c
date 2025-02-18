#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x1a, 0xcf, 0x79, 0xbb, 0x52, 0x18, 0xc2, 0x68, 0xaf, 0x5, 0x10, 0x7d, 0x5e, 0x48, 0x4d, 0xb7};
    uint8_t data[16] = {0xc1, 0x95, 0x94, 0xa1, 0x86, 0x58, 0xd, 0xe4, 0x2a, 0x24, 0xf2, 0xbf, 0xd9, 0x2, 0x65, 0x72};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
