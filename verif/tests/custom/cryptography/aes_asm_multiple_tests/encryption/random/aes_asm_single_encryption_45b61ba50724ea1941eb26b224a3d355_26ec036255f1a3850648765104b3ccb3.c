#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x26, 0xec, 0x3, 0x62, 0x55, 0xf1, 0xa3, 0x85, 0x6, 0x48, 0x76, 0x51, 0x4, 0xb3, 0xcc, 0xb3};
    uint8_t data[16] = {0x45, 0xb6, 0x1b, 0xa5, 0x7, 0x24, 0xea, 0x19, 0x41, 0xeb, 0x26, 0xb2, 0x24, 0xa3, 0xd3, 0x55};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}