#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x6c, 0x4b, 0x71, 0x14, 0xf7, 0xc3, 0x3c, 0x2e, 0xfa, 0x3, 0xeb, 0xc0, 0x73, 0xb8, 0x65, 0x77};
    uint8_t data[16] = {0xcc, 0x7e, 0xd7, 0xa5, 0x8b, 0x66, 0x3e, 0x33, 0xd2, 0x9, 0xae, 0x18, 0xe7, 0x0, 0x1, 0xc1};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}