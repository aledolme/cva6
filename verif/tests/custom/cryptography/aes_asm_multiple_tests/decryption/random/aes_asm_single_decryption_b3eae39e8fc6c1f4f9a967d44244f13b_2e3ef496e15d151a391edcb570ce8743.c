#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2e, 0x3e, 0xf4, 0x96, 0xe1, 0x5d, 0x15, 0x1a, 0x39, 0x1e, 0xdc, 0xb5, 0x70, 0xce, 0x87, 0x43};
    uint8_t data[16] = {0xb3, 0xea, 0xe3, 0x9e, 0x8f, 0xc6, 0xc1, 0xf4, 0xf9, 0xa9, 0x67, 0xd4, 0x42, 0x44, 0xf1, 0x3b};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
