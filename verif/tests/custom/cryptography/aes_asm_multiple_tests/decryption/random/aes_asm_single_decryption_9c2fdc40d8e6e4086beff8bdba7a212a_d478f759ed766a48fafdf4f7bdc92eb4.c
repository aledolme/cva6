#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd4, 0x78, 0xf7, 0x59, 0xed, 0x76, 0x6a, 0x48, 0xfa, 0xfd, 0xf4, 0xf7, 0xbd, 0xc9, 0x2e, 0xb4};
    uint8_t data[16] = {0x9c, 0x2f, 0xdc, 0x40, 0xd8, 0xe6, 0xe4, 0x8, 0x6b, 0xef, 0xf8, 0xbd, 0xba, 0x7a, 0x21, 0x2a};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}