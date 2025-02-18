#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x7c, 0x2b, 0xf5, 0x62, 0xd4, 0x9d, 0x79, 0xac, 0xe2, 0x5e, 0x74, 0x71, 0xd5, 0xb6, 0xa3, 0xa7};
    uint8_t data[16] = {0x88, 0xeb, 0x1b, 0x5a, 0xe5, 0xa4, 0xc, 0x37, 0x63, 0x8d, 0x99, 0x6d, 0xc, 0xae, 0xc9, 0xf4};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
