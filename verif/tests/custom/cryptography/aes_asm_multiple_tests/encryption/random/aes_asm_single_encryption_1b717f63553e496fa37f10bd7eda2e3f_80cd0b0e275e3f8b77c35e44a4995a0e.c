#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x80, 0xcd, 0xb, 0xe, 0x27, 0x5e, 0x3f, 0x8b, 0x77, 0xc3, 0x5e, 0x44, 0xa4, 0x99, 0x5a, 0xe};
    uint8_t data[16] = {0x1b, 0x71, 0x7f, 0x63, 0x55, 0x3e, 0x49, 0x6f, 0xa3, 0x7f, 0x10, 0xbd, 0x7e, 0xda, 0x2e, 0x3f};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
