#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xb9, 0xaf, 0x80, 0x6, 0x1c, 0xf9, 0x6e, 0x7e, 0xc8, 0x51, 0x82, 0x29, 0x5e, 0x97, 0xa1, 0xf8};
    uint8_t data[16] = {0xca, 0xf7, 0xd5, 0x6d, 0x4b, 0x82, 0xea, 0x46, 0x99, 0x55, 0x91, 0x43, 0xfb, 0x60, 0xae, 0x8b};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}