#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x28, 0x16, 0x60, 0x4, 0x45, 0x5e, 0x2b, 0x94, 0x32, 0x22, 0x34, 0x17, 0x1d, 0xdc, 0x37, 0xb1};
    uint8_t data[16] = {0x27, 0xfe, 0xab, 0x88, 0xae, 0x9, 0x12, 0x92, 0xcf, 0xa8, 0x1d, 0xf6, 0x98, 0x7d, 0xeb, 0x3e};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}