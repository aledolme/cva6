#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x7, 0xb8, 0x4d, 0x9b, 0xb4, 0x77, 0xa5, 0x80, 0x65, 0x6a, 0x3a, 0x8c, 0x23, 0xed, 0xe5, 0x3f};
    uint8_t data[16] = {0x89, 0x6c, 0xb9, 0xdf, 0xca, 0x45, 0xd5, 0xd7, 0x5b, 0xf3, 0xa1, 0x85, 0x7f, 0xb0, 0xa4, 0x38};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}