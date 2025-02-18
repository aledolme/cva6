#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x3c, 0x9f, 0x5f, 0xb, 0x9d, 0xc9, 0x7b, 0xec, 0x6, 0x36, 0x6a, 0x1c, 0x30, 0x4e, 0xe, 0x67};
    uint8_t data[16] = {0x1c, 0x28, 0x92, 0xb0, 0xe2, 0xe3, 0x53, 0xc0, 0x75, 0xae, 0x90, 0x3c, 0xb4, 0x6a, 0xf6, 0x2};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
