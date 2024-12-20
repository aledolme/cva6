#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x99, 0xda, 0xb2, 0x9d, 0x3c, 0xeb, 0x3a, 0xa8, 0x8e, 0x1a, 0xb3, 0x59, 0xc, 0x1c, 0xc6, 0x82};
    uint8_t data[16] = {0xfa, 0x57, 0xcc, 0x4b, 0x4a, 0xb6, 0x13, 0xd9, 0x11, 0x50, 0x9e, 0x7a, 0xa8, 0x72, 0x24, 0x9};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
