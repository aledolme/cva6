#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x6f, 0x17, 0xd7, 0x97, 0x7b, 0xce, 0xb6, 0x18, 0xeb, 0x38, 0x3a, 0xd9, 0x5f, 0x3d, 0x5e, 0x10};
    uint8_t data[16] = {0xd4, 0x5d, 0xd1, 0x5c, 0xdc, 0x5d, 0xf3, 0x91, 0xce, 0xb4, 0xf, 0xa0, 0xaa, 0x78, 0xfe, 0x2};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
