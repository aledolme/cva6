#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x4f, 0xaf, 0x12, 0xd4, 0xd7, 0xd0, 0xa0, 0xf2, 0xbe, 0xe, 0x5b, 0xc3, 0xe3, 0xbf, 0xb0, 0x6f};
    uint8_t data[16] = {0xd7, 0x49, 0x2c, 0x47, 0x5f, 0x36, 0xeb, 0x88, 0x18, 0xdc, 0x19, 0x41, 0x34, 0x34, 0x6b, 0x4};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
