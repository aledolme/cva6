#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x6b, 0x24, 0xb2, 0x51, 0xa1, 0x4a, 0x49, 0xd9, 0x8a, 0xde, 0x82, 0x4d, 0x40, 0x4b, 0xa4, 0x30};
    uint8_t data[16] = {0x4c, 0xda, 0x95, 0xea, 0xd2, 0x38, 0x6d, 0x73, 0x44, 0xaa, 0x97, 0xb3, 0xd3, 0x82, 0x6c, 0xa2};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}