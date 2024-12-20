#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x4d, 0x41, 0x32, 0x8f, 0x96, 0xb5, 0xde, 0x17, 0x6c, 0xe5, 0x6d, 0x61, 0x36, 0xef, 0x8d, 0xf2};
    uint8_t data[16] = {0x79, 0x31, 0xeb, 0x51, 0x5e, 0xfb, 0x0, 0xd7, 0x53, 0x5a, 0x1f, 0xf2, 0xa9, 0x7b, 0x86, 0xe2};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
