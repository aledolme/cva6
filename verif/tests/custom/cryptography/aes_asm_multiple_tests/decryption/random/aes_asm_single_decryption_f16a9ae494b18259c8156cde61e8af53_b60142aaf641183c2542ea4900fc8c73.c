#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xb6, 0x1, 0x42, 0xaa, 0xf6, 0x41, 0x18, 0x3c, 0x25, 0x42, 0xea, 0x49, 0x0, 0xfc, 0x8c, 0x73};
    uint8_t data[16] = {0xf1, 0x6a, 0x9a, 0xe4, 0x94, 0xb1, 0x82, 0x59, 0xc8, 0x15, 0x6c, 0xde, 0x61, 0xe8, 0xaf, 0x53};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}