#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x5e, 0x1b, 0xa9, 0xb6, 0x2c, 0xed, 0xff, 0x7c, 0xa2, 0xca, 0x5c, 0x18, 0x60, 0xa, 0x46, 0xb0};
    uint8_t data[16] = {0x19, 0xe3, 0xed, 0x77, 0x92, 0x1a, 0x9c, 0x21, 0xf7, 0xa5, 0x3, 0x1, 0xf9, 0xf8, 0x8d, 0x49};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
