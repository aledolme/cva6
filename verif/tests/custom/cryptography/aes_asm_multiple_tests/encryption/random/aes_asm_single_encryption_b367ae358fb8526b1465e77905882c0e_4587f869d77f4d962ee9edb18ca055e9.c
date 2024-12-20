#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x45, 0x87, 0xf8, 0x69, 0xd7, 0x7f, 0x4d, 0x96, 0x2e, 0xe9, 0xed, 0xb1, 0x8c, 0xa0, 0x55, 0xe9};
    uint8_t data[16] = {0xb3, 0x67, 0xae, 0x35, 0x8f, 0xb8, 0x52, 0x6b, 0x14, 0x65, 0xe7, 0x79, 0x5, 0x88, 0x2c, 0xe};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
