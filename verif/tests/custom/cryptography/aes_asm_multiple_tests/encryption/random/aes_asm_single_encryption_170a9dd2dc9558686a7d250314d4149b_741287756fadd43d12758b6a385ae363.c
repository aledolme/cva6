#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x74, 0x12, 0x87, 0x75, 0x6f, 0xad, 0xd4, 0x3d, 0x12, 0x75, 0x8b, 0x6a, 0x38, 0x5a, 0xe3, 0x63};
    uint8_t data[16] = {0x17, 0xa, 0x9d, 0xd2, 0xdc, 0x95, 0x58, 0x68, 0x6a, 0x7d, 0x25, 0x3, 0x14, 0xd4, 0x14, 0x9b};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}