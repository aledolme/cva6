#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xf, 0xda, 0xdc, 0xcd, 0x53, 0xa6, 0x16, 0xa9, 0xa0, 0xed, 0x4d, 0x28, 0x1, 0x73, 0xa4, 0x8c};
    uint8_t data[16] = {0xb7, 0xdc, 0xa5, 0x2a, 0xfc, 0x6b, 0x22, 0x1, 0x16, 0x6f, 0xeb, 0x33, 0xfd, 0xef, 0x88, 0xa5};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}