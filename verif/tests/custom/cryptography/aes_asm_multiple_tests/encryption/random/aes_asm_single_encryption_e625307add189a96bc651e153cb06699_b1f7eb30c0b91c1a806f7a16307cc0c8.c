#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xb1, 0xf7, 0xeb, 0x30, 0xc0, 0xb9, 0x1c, 0x1a, 0x80, 0x6f, 0x7a, 0x16, 0x30, 0x7c, 0xc0, 0xc8};
    uint8_t data[16] = {0xe6, 0x25, 0x30, 0x7a, 0xdd, 0x18, 0x9a, 0x96, 0xbc, 0x65, 0x1e, 0x15, 0x3c, 0xb0, 0x66, 0x99};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}