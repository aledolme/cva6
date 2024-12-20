#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x78, 0x19, 0x92, 0x84, 0x59, 0xb, 0xa5, 0x4c, 0x7a, 0x6, 0xf0, 0xf0, 0xe8, 0x0, 0xec, 0x3b};
    uint8_t data[16] = {0xc8, 0x99, 0x47, 0x5, 0xf7, 0xd9, 0x4f, 0x72, 0x96, 0x9a, 0xfd, 0xe4, 0xfe, 0x1d, 0x37, 0xd5};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
