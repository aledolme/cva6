#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x8a, 0xc9, 0xe2, 0x56, 0xb2, 0x14, 0xa7, 0x3, 0x3b, 0xfc, 0x57, 0xe9, 0xb3, 0x5c, 0xae, 0xeb};
    uint8_t data[16] = {0x1f, 0xf5, 0x3d, 0xe0, 0xa, 0x71, 0x3e, 0x39, 0x36, 0x86, 0x76, 0xf, 0x17, 0x56, 0xfe, 0x58};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
