#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd9, 0xdd, 0xb0, 0x42, 0x54, 0x4a, 0x17, 0x62, 0x33, 0xe3, 0x10, 0x9e, 0xfe, 0xdd, 0xa5, 0x54};
    uint8_t data[16] = {0x24, 0xab, 0xc3, 0xb1, 0x8c, 0x51, 0xf0, 0xe5, 0xe4, 0xc7, 0x71, 0x5b, 0xcf, 0x53, 0x13, 0x90};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}