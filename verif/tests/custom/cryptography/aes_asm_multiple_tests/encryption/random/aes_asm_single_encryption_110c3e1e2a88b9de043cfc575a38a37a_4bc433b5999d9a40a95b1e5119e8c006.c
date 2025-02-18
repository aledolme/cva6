#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x4b, 0xc4, 0x33, 0xb5, 0x99, 0x9d, 0x9a, 0x40, 0xa9, 0x5b, 0x1e, 0x51, 0x19, 0xe8, 0xc0, 0x6};
    uint8_t data[16] = {0x11, 0xc, 0x3e, 0x1e, 0x2a, 0x88, 0xb9, 0xde, 0x4, 0x3c, 0xfc, 0x57, 0x5a, 0x38, 0xa3, 0x7a};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
