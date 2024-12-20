#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x51, 0x88, 0xa1, 0x80, 0x2d, 0x67, 0xd6, 0xb7, 0xe1, 0xf1, 0xed, 0xc6, 0xb7, 0x4c, 0xd8, 0x82};
    uint8_t data[16] = {0x44, 0x7b, 0x46, 0xa6, 0x62, 0x9b, 0xfe, 0xce, 0x24, 0xf8, 0x1e, 0xfe, 0xb, 0x70, 0x29, 0xd0};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
