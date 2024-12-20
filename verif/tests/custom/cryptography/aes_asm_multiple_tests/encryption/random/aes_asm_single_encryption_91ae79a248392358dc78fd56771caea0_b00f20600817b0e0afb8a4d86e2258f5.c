#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xb0, 0xf, 0x20, 0x60, 0x8, 0x17, 0xb0, 0xe0, 0xaf, 0xb8, 0xa4, 0xd8, 0x6e, 0x22, 0x58, 0xf5};
    uint8_t data[16] = {0x91, 0xae, 0x79, 0xa2, 0x48, 0x39, 0x23, 0x58, 0xdc, 0x78, 0xfd, 0x56, 0x77, 0x1c, 0xae, 0xa0};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
