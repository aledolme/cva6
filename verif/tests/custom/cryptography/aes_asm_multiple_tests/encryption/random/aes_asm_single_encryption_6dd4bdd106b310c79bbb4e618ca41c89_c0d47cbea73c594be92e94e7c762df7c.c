#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xc0, 0xd4, 0x7c, 0xbe, 0xa7, 0x3c, 0x59, 0x4b, 0xe9, 0x2e, 0x94, 0xe7, 0xc7, 0x62, 0xdf, 0x7c};
    uint8_t data[16] = {0x6d, 0xd4, 0xbd, 0xd1, 0x6, 0xb3, 0x10, 0xc7, 0x9b, 0xbb, 0x4e, 0x61, 0x8c, 0xa4, 0x1c, 0x89};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}