#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x54, 0xe7, 0x4b, 0x6e, 0xa2, 0x2c, 0xc4, 0x7e, 0x85, 0x49, 0xac, 0xf, 0x32, 0x71, 0x2e, 0xeb};
    uint8_t data[16] = {0x11, 0xd6, 0x2a, 0x36, 0x1a, 0xae, 0x1, 0xc, 0xe1, 0x0, 0x5c, 0xb6, 0x6a, 0x53, 0xfd, 0xf5};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
