#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x72, 0xa, 0xdb, 0x8b, 0xae, 0xa5, 0x3e, 0xe9, 0x3e, 0xd4, 0xf5, 0x5a, 0xb9, 0x5c, 0xf7, 0x97};
    uint8_t data[16] = {0x57, 0xf4, 0x8, 0x35, 0xac, 0x29, 0x1, 0x61, 0x22, 0x94, 0x26, 0x2d, 0xc8, 0x3c, 0xf, 0xed};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
