#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2c, 0xec, 0xe0, 0xad, 0x84, 0x4d, 0x72, 0x64, 0x8e, 0x4d, 0xb7, 0x9f, 0x9e, 0xcf, 0x8e, 0xc5};
    uint8_t data[16] = {0x51, 0x87, 0xd0, 0x7c, 0x1c, 0x10, 0x33, 0x3, 0x4a, 0x1f, 0xe, 0x97, 0x6c, 0xa1, 0x7c, 0x96};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
