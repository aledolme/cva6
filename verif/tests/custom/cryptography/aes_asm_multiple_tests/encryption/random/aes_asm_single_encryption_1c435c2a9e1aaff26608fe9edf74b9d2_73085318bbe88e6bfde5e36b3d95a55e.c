#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x73, 0x8, 0x53, 0x18, 0xbb, 0xe8, 0x8e, 0x6b, 0xfd, 0xe5, 0xe3, 0x6b, 0x3d, 0x95, 0xa5, 0x5e};
    uint8_t data[16] = {0x1c, 0x43, 0x5c, 0x2a, 0x9e, 0x1a, 0xaf, 0xf2, 0x66, 0x8, 0xfe, 0x9e, 0xdf, 0x74, 0xb9, 0xd2};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
