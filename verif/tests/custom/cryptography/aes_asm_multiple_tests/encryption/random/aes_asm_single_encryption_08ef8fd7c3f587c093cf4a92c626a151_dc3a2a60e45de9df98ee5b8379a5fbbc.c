#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xdc, 0x3a, 0x2a, 0x60, 0xe4, 0x5d, 0xe9, 0xdf, 0x98, 0xee, 0x5b, 0x83, 0x79, 0xa5, 0xfb, 0xbc};
    uint8_t data[16] = {0x8, 0xef, 0x8f, 0xd7, 0xc3, 0xf5, 0x87, 0xc0, 0x93, 0xcf, 0x4a, 0x92, 0xc6, 0x26, 0xa1, 0x51};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}