#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x15, 0xfa, 0xbc, 0xfb, 0x38, 0x85, 0x73, 0xf6, 0x4f, 0x26, 0xaa, 0xa6, 0x9, 0x72, 0x5e, 0xdf};
    uint8_t data[16] = {0x8c, 0xff, 0x73, 0x6, 0x32, 0x9f, 0xaa, 0x27, 0x67, 0xf, 0x2a, 0x73, 0xdb, 0xbc, 0xba, 0xb4};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}