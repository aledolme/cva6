#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xa7, 0xed, 0xa3, 0x5, 0xbf, 0xb5, 0x6e, 0x8c, 0x42, 0x4d, 0x82, 0x94, 0x32, 0xc6, 0x5d, 0xba};
    uint8_t data[16] = {0x78, 0xf8, 0x6b, 0x34, 0xbe, 0xf4, 0xb0, 0x2f, 0xa7, 0x4f, 0x6d, 0x82, 0x86, 0x14, 0x6e, 0x69};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}