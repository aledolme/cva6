#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xfc, 0xff, 0xb5, 0x93, 0xca, 0x4f, 0xce, 0xb4, 0x26, 0x40, 0xca, 0xbc, 0x86, 0xe5, 0x44, 0x1a};
    uint8_t data[16] = {0x1, 0xb0, 0xe1, 0x8d, 0xa9, 0x62, 0x62, 0x35, 0x8c, 0xc5, 0xf7, 0x9, 0x22, 0x55, 0x74, 0x75};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}