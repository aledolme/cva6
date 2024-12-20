#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd8, 0x61, 0x67, 0xe3, 0xb8, 0x9d, 0x2a, 0x75, 0x87, 0x51, 0xc4, 0x24, 0xa3, 0x4f, 0x47, 0xca};
    uint8_t data[16] = {0xd1, 0xe3, 0x3, 0x8c, 0x82, 0x6f, 0x14, 0xe2, 0x4a, 0xfd, 0xe4, 0x73, 0xfe, 0x15, 0x6a, 0xa8};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
