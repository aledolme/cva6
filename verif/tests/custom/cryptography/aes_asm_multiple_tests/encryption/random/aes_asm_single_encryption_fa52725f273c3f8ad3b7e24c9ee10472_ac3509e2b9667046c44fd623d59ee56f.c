#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xac, 0x35, 0x9, 0xe2, 0xb9, 0x66, 0x70, 0x46, 0xc4, 0x4f, 0xd6, 0x23, 0xd5, 0x9e, 0xe5, 0x6f};
    uint8_t data[16] = {0xfa, 0x52, 0x72, 0x5f, 0x27, 0x3c, 0x3f, 0x8a, 0xd3, 0xb7, 0xe2, 0x4c, 0x9e, 0xe1, 0x4, 0x72};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
