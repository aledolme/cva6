#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x32, 0x8c, 0xfe, 0xf2, 0x94, 0xc4, 0x36, 0x27, 0xe6, 0x6e, 0x46, 0xd1, 0x41, 0x1b, 0x2b, 0x65};
    uint8_t data[16] = {0xda, 0x76, 0xff, 0x7, 0x8d, 0x52, 0x31, 0xaa, 0xe2, 0xb7, 0x1f, 0x73, 0xad, 0xb5, 0xbe, 0xe7};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
