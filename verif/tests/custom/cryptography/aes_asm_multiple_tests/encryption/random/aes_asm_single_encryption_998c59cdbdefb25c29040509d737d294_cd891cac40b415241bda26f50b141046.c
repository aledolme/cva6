#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xcd, 0x89, 0x1c, 0xac, 0x40, 0xb4, 0x15, 0x24, 0x1b, 0xda, 0x26, 0xf5, 0xb, 0x14, 0x10, 0x46};
    uint8_t data[16] = {0x99, 0x8c, 0x59, 0xcd, 0xbd, 0xef, 0xb2, 0x5c, 0x29, 0x4, 0x5, 0x9, 0xd7, 0x37, 0xd2, 0x94};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}