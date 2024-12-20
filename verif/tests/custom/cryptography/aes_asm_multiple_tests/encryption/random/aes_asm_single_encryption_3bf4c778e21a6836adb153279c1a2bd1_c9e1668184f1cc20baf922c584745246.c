#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xc9, 0xe1, 0x66, 0x81, 0x84, 0xf1, 0xcc, 0x20, 0xba, 0xf9, 0x22, 0xc5, 0x84, 0x74, 0x52, 0x46};
    uint8_t data[16] = {0x3b, 0xf4, 0xc7, 0x78, 0xe2, 0x1a, 0x68, 0x36, 0xad, 0xb1, 0x53, 0x27, 0x9c, 0x1a, 0x2b, 0xd1};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
