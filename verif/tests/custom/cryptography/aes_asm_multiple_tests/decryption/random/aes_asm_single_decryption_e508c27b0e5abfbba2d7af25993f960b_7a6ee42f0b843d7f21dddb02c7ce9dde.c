#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x7a, 0x6e, 0xe4, 0x2f, 0xb, 0x84, 0x3d, 0x7f, 0x21, 0xdd, 0xdb, 0x2, 0xc7, 0xce, 0x9d, 0xde};
    uint8_t data[16] = {0xe5, 0x8, 0xc2, 0x7b, 0xe, 0x5a, 0xbf, 0xbb, 0xa2, 0xd7, 0xaf, 0x25, 0x99, 0x3f, 0x96, 0xb};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}