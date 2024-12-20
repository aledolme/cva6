#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x3e, 0x59, 0xf9, 0x73, 0xa9, 0xf6, 0x38, 0xe5, 0x2a, 0x1a, 0xc, 0xb7, 0x8a, 0x18, 0xe, 0x6e};
    uint8_t data[16] = {0x7f, 0x9c, 0x2b, 0x27, 0x3c, 0x66, 0xe3, 0x81, 0x1f, 0xed, 0x6d, 0x7f, 0x3, 0x6e, 0x6c, 0x85};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
