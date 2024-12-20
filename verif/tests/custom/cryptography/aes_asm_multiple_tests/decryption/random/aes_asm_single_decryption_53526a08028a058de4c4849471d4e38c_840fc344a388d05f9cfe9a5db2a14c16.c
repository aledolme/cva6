#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x84, 0xf, 0xc3, 0x44, 0xa3, 0x88, 0xd0, 0x5f, 0x9c, 0xfe, 0x9a, 0x5d, 0xb2, 0xa1, 0x4c, 0x16};
    uint8_t data[16] = {0x53, 0x52, 0x6a, 0x8, 0x2, 0x8a, 0x5, 0x8d, 0xe4, 0xc4, 0x84, 0x94, 0x71, 0xd4, 0xe3, 0x8c};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
