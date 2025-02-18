#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xb2, 0x6d, 0x28, 0x3b, 0xea, 0x37, 0x75, 0x9e, 0x8c, 0x2f, 0xde, 0xa3, 0x2, 0x6c, 0xd8, 0x86};
    uint8_t data[16] = {0xda, 0xc6, 0x10, 0x81, 0x4b, 0x12, 0x3c, 0x6f, 0xa3, 0x5b, 0x48, 0x59, 0x3c, 0x6b, 0x79, 0x83};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
