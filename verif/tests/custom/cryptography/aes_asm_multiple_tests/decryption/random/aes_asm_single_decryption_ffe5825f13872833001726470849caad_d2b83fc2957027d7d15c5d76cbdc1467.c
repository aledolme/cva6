#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd2, 0xb8, 0x3f, 0xc2, 0x95, 0x70, 0x27, 0xd7, 0xd1, 0x5c, 0x5d, 0x76, 0xcb, 0xdc, 0x14, 0x67};
    uint8_t data[16] = {0xff, 0xe5, 0x82, 0x5f, 0x13, 0x87, 0x28, 0x33, 0x0, 0x17, 0x26, 0x47, 0x8, 0x49, 0xca, 0xad};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
