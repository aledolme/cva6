#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x8, 0x4d, 0x56, 0x14, 0x76, 0xa4, 0xa7, 0xea, 0x53, 0xe4, 0xe4, 0x98, 0x25, 0xba, 0x5, 0x4f};
    uint8_t data[16] = {0x54, 0x54, 0x3c, 0xfd, 0xe6, 0x95, 0x53, 0xfa, 0xcb, 0x5, 0xbe, 0x8a, 0xe8, 0xaa, 0x3e, 0x20};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
