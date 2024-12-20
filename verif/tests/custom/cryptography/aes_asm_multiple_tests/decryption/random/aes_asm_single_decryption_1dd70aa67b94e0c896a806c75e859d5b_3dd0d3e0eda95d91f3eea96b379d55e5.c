#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x3d, 0xd0, 0xd3, 0xe0, 0xed, 0xa9, 0x5d, 0x91, 0xf3, 0xee, 0xa9, 0x6b, 0x37, 0x9d, 0x55, 0xe5};
    uint8_t data[16] = {0x1d, 0xd7, 0xa, 0xa6, 0x7b, 0x94, 0xe0, 0xc8, 0x96, 0xa8, 0x6, 0xc7, 0x5e, 0x85, 0x9d, 0x5b};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
