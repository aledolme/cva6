#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x8e, 0xed, 0x9e, 0xc7, 0xd1, 0xba, 0x14, 0xbb, 0x4f, 0x71, 0xd9, 0xfd, 0xf7, 0xd5, 0x1c, 0xcc};
    uint8_t data[16] = {0xf, 0xd7, 0xfa, 0x71, 0x80, 0xf2, 0x25, 0x3, 0x9, 0x9c, 0xd7, 0xb7, 0xa6, 0x41, 0x44, 0x6c};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
