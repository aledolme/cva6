#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x89, 0x72, 0xaf, 0xfa, 0x56, 0x66, 0x1a, 0x60, 0xc0, 0x2b, 0x20, 0x2e, 0xa, 0x26, 0x76, 0x58};
    uint8_t data[16] = {0x63, 0x3c, 0xa9, 0x89, 0xf4, 0x32, 0x63, 0x3, 0xa8, 0xcb, 0x3e, 0x93, 0x99, 0x58, 0xe2, 0x1d};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
