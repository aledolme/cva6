#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x91, 0x5e, 0xea, 0x53, 0xad, 0xa4, 0x81, 0x7c, 0x65, 0x50, 0xf4, 0x66, 0x5b, 0xde, 0x37, 0x97};
    uint8_t data[16] = {0xa6, 0x39, 0xc4, 0xa2, 0x63, 0x48, 0x7, 0xbe, 0x8f, 0x10, 0x9, 0xb1, 0x13, 0xb3, 0x9, 0x7a};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}