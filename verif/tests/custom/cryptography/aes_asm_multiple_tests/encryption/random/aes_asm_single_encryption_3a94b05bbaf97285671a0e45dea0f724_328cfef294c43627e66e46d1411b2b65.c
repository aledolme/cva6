#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x32, 0x8c, 0xfe, 0xf2, 0x94, 0xc4, 0x36, 0x27, 0xe6, 0x6e, 0x46, 0xd1, 0x41, 0x1b, 0x2b, 0x65};
    uint8_t data[16] = {0x3a, 0x94, 0xb0, 0x5b, 0xba, 0xf9, 0x72, 0x85, 0x67, 0x1a, 0xe, 0x45, 0xde, 0xa0, 0xf7, 0x24};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
