#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x38, 0x61, 0x4, 0x7d, 0x6e, 0xa, 0x2e, 0x57, 0x49, 0x77, 0x4a, 0x31, 0x0, 0xea, 0xe9, 0x11};
    uint8_t data[16] = {0xbd, 0x49, 0x1b, 0x74, 0x83, 0xf8, 0x43, 0x0, 0x72, 0x99, 0x7a, 0x85, 0x2c, 0xe5, 0x22, 0x7a};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}