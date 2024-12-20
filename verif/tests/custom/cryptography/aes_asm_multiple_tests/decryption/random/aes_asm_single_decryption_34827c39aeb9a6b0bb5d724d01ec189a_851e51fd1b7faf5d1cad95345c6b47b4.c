#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x85, 0x1e, 0x51, 0xfd, 0x1b, 0x7f, 0xaf, 0x5d, 0x1c, 0xad, 0x95, 0x34, 0x5c, 0x6b, 0x47, 0xb4};
    uint8_t data[16] = {0x34, 0x82, 0x7c, 0x39, 0xae, 0xb9, 0xa6, 0xb0, 0xbb, 0x5d, 0x72, 0x4d, 0x1, 0xec, 0x18, 0x9a};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
