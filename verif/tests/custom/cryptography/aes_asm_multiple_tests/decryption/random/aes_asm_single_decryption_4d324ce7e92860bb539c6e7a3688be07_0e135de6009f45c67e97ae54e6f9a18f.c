#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xe, 0x13, 0x5d, 0xe6, 0x0, 0x9f, 0x45, 0xc6, 0x7e, 0x97, 0xae, 0x54, 0xe6, 0xf9, 0xa1, 0x8f};
    uint8_t data[16] = {0x4d, 0x32, 0x4c, 0xe7, 0xe9, 0x28, 0x60, 0xbb, 0x53, 0x9c, 0x6e, 0x7a, 0x36, 0x88, 0xbe, 0x7};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}