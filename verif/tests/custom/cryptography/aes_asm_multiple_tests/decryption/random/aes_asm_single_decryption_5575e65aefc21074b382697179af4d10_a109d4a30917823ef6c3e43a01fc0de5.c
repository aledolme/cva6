#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xa1, 0x9, 0xd4, 0xa3, 0x9, 0x17, 0x82, 0x3e, 0xf6, 0xc3, 0xe4, 0x3a, 0x1, 0xfc, 0xd, 0xe5};
    uint8_t data[16] = {0x55, 0x75, 0xe6, 0x5a, 0xef, 0xc2, 0x10, 0x74, 0xb3, 0x82, 0x69, 0x71, 0x79, 0xaf, 0x4d, 0x10};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}