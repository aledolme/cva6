#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x91, 0x5e, 0xea, 0x53, 0xad, 0xa4, 0x81, 0x7c, 0x65, 0x50, 0xf4, 0x66, 0x5b, 0xde, 0x37, 0x97};
    uint8_t data[16] = {0x67, 0xe, 0x2, 0x83, 0x79, 0xf2, 0xb1, 0xe1, 0x95, 0x6b, 0x67, 0x56, 0xb8, 0xe7, 0x28, 0x9a};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
