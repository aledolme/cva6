#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x4d, 0xf2, 0x5e, 0x6b, 0x50, 0x6f, 0x98, 0x8a, 0x68, 0x4d, 0x68, 0xd6, 0x3f, 0xce, 0x87, 0x35};
    uint8_t data[16] = {0x12, 0xd1, 0x71, 0x3b, 0xd8, 0x4c, 0x62, 0x49, 0xa5, 0xba, 0x89, 0xd, 0xe6, 0x3, 0xe7, 0xe6};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}