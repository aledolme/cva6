#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x94, 0x4d, 0xab, 0x35, 0x42, 0x4b, 0xf7, 0xed, 0xd4, 0xed, 0x3f, 0x46, 0x8c, 0x10, 0xa1, 0x88};
    uint8_t data[16] = {0xb2, 0xc0, 0x6c, 0xde, 0xad, 0xd5, 0x6e, 0x6e, 0xc6, 0x60, 0x2c, 0x20, 0xa7, 0xd7, 0x9b, 0x17};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
