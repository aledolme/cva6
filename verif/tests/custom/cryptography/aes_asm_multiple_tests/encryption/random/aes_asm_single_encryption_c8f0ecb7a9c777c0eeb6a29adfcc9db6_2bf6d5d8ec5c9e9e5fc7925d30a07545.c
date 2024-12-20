#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2b, 0xf6, 0xd5, 0xd8, 0xec, 0x5c, 0x9e, 0x9e, 0x5f, 0xc7, 0x92, 0x5d, 0x30, 0xa0, 0x75, 0x45};
    uint8_t data[16] = {0xc8, 0xf0, 0xec, 0xb7, 0xa9, 0xc7, 0x77, 0xc0, 0xee, 0xb6, 0xa2, 0x9a, 0xdf, 0xcc, 0x9d, 0xb6};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
