#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xc9, 0x4b, 0x4a, 0x43, 0xe0, 0x6f, 0x6e, 0xb8, 0x11, 0x10, 0x31, 0x52, 0xb7, 0x88, 0x3e, 0x39};
    uint8_t data[16] = {0xb0, 0xaf, 0x88, 0xa1, 0x7f, 0xbd, 0xcc, 0xcf, 0xa6, 0xad, 0xa3, 0xe1, 0x65, 0x57, 0xf4, 0x14};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}