#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2b, 0xe3, 0x22, 0x7f, 0x98, 0xde, 0xcb, 0x63, 0xb6, 0xf2, 0x77, 0xcd, 0x69, 0x47, 0xef, 0x7f};
    uint8_t data[16] = {0xbe, 0x91, 0x56, 0x17, 0xf5, 0xb4, 0x74, 0x54, 0x19, 0x2e, 0xfa, 0xb, 0xba, 0x88, 0xbe, 0x52};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}