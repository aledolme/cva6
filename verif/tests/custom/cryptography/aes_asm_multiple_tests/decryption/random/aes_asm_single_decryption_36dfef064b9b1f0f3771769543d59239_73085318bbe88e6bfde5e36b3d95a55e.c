#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x73, 0x8, 0x53, 0x18, 0xbb, 0xe8, 0x8e, 0x6b, 0xfd, 0xe5, 0xe3, 0x6b, 0x3d, 0x95, 0xa5, 0x5e};
    uint8_t data[16] = {0x36, 0xdf, 0xef, 0x6, 0x4b, 0x9b, 0x1f, 0xf, 0x37, 0x71, 0x76, 0x95, 0x43, 0xd5, 0x92, 0x39};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
