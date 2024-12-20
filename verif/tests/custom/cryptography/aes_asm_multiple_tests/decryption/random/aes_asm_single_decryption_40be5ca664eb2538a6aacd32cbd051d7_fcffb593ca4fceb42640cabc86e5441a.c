#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xfc, 0xff, 0xb5, 0x93, 0xca, 0x4f, 0xce, 0xb4, 0x26, 0x40, 0xca, 0xbc, 0x86, 0xe5, 0x44, 0x1a};
    uint8_t data[16] = {0x40, 0xbe, 0x5c, 0xa6, 0x64, 0xeb, 0x25, 0x38, 0xa6, 0xaa, 0xcd, 0x32, 0xcb, 0xd0, 0x51, 0xd7};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
