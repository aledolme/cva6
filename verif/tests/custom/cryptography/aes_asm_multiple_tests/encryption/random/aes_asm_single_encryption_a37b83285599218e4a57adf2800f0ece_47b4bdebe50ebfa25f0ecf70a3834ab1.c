#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x47, 0xb4, 0xbd, 0xeb, 0xe5, 0xe, 0xbf, 0xa2, 0x5f, 0xe, 0xcf, 0x70, 0xa3, 0x83, 0x4a, 0xb1};
    uint8_t data[16] = {0xa3, 0x7b, 0x83, 0x28, 0x55, 0x99, 0x21, 0x8e, 0x4a, 0x57, 0xad, 0xf2, 0x80, 0xf, 0xe, 0xce};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
