#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xa1, 0xe6, 0x30, 0xfd, 0xef, 0x3a, 0x8e, 0xfd, 0x87, 0xe9, 0x31, 0x78, 0x12, 0xc7, 0xc7, 0xef};
    uint8_t data[16] = {0x23, 0xa2, 0x37, 0x93, 0x47, 0xc1, 0x5c, 0x8d, 0x69, 0x4a, 0x2f, 0xec, 0xdc, 0xae, 0x4a, 0x4e};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
