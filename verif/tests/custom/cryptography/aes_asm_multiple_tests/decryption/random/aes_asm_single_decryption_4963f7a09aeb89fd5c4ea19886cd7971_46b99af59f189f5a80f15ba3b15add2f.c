#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x46, 0xb9, 0x9a, 0xf5, 0x9f, 0x18, 0x9f, 0x5a, 0x80, 0xf1, 0x5b, 0xa3, 0xb1, 0x5a, 0xdd, 0x2f};
    uint8_t data[16] = {0x49, 0x63, 0xf7, 0xa0, 0x9a, 0xeb, 0x89, 0xfd, 0x5c, 0x4e, 0xa1, 0x98, 0x86, 0xcd, 0x79, 0x71};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}