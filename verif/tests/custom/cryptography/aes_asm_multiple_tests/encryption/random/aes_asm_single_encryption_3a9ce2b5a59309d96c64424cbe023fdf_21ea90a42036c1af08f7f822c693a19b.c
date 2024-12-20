#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x21, 0xea, 0x90, 0xa4, 0x20, 0x36, 0xc1, 0xaf, 0x8, 0xf7, 0xf8, 0x22, 0xc6, 0x93, 0xa1, 0x9b};
    uint8_t data[16] = {0x3a, 0x9c, 0xe2, 0xb5, 0xa5, 0x93, 0x9, 0xd9, 0x6c, 0x64, 0x42, 0x4c, 0xbe, 0x2, 0x3f, 0xdf};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
