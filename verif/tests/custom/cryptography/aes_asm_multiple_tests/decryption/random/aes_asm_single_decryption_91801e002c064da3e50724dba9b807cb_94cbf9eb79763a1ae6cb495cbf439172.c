#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x94, 0xcb, 0xf9, 0xeb, 0x79, 0x76, 0x3a, 0x1a, 0xe6, 0xcb, 0x49, 0x5c, 0xbf, 0x43, 0x91, 0x72};
    uint8_t data[16] = {0x91, 0x80, 0x1e, 0x0, 0x2c, 0x6, 0x4d, 0xa3, 0xe5, 0x7, 0x24, 0xdb, 0xa9, 0xb8, 0x7, 0xcb};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}