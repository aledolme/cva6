#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xec, 0x10, 0x7b, 0x7d, 0xc2, 0xc8, 0x91, 0x28, 0xfa, 0x9e, 0x27, 0x13, 0xb4, 0x62, 0x46, 0xa7};
    uint8_t data[16] = {0xd1, 0xb9, 0x7b, 0x8b, 0x2c, 0x8d, 0xd3, 0x40, 0xc2, 0x37, 0x7b, 0x5b, 0xcc, 0x76, 0x23, 0xf3};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
