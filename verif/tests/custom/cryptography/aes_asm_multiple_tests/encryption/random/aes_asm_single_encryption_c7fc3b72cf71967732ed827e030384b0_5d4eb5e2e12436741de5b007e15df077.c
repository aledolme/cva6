#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x5d, 0x4e, 0xb5, 0xe2, 0xe1, 0x24, 0x36, 0x74, 0x1d, 0xe5, 0xb0, 0x7, 0xe1, 0x5d, 0xf0, 0x77};
    uint8_t data[16] = {0xc7, 0xfc, 0x3b, 0x72, 0xcf, 0x71, 0x96, 0x77, 0x32, 0xed, 0x82, 0x7e, 0x3, 0x3, 0x84, 0xb0};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
