#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x6e, 0xe3, 0xa7, 0x35, 0x3d, 0x2a, 0x4f, 0x91, 0x40, 0x4, 0x67, 0xd0, 0x28, 0x69, 0xfc, 0x51};
    uint8_t data[16] = {0xbb, 0x58, 0x78, 0x2b, 0xbc, 0xba, 0xc6, 0x84, 0xcc, 0xf9, 0xb5, 0x9b, 0xf8, 0x9c, 0xac, 0x3f};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}