#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd8, 0x61, 0x67, 0xe3, 0xb8, 0x9d, 0x2a, 0x75, 0x87, 0x51, 0xc4, 0x24, 0xa3, 0x4f, 0x47, 0xca};
    uint8_t data[16] = {0xe1, 0xfc, 0xc6, 0xd2, 0x4e, 0x52, 0xde, 0xe5, 0x53, 0xb0, 0xa1, 0xdd, 0xd7, 0x7a, 0xe6, 0x35};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}