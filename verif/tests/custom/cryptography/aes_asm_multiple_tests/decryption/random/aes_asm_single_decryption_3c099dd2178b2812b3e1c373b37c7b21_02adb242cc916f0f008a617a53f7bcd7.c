#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2, 0xad, 0xb2, 0x42, 0xcc, 0x91, 0x6f, 0xf, 0x0, 0x8a, 0x61, 0x7a, 0x53, 0xf7, 0xbc, 0xd7};
    uint8_t data[16] = {0x3c, 0x9, 0x9d, 0xd2, 0x17, 0x8b, 0x28, 0x12, 0xb3, 0xe1, 0xc3, 0x73, 0xb3, 0x7c, 0x7b, 0x21};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}