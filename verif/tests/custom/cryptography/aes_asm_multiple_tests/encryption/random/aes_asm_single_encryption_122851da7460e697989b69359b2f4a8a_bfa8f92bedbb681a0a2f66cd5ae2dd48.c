#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xbf, 0xa8, 0xf9, 0x2b, 0xed, 0xbb, 0x68, 0x1a, 0xa, 0x2f, 0x66, 0xcd, 0x5a, 0xe2, 0xdd, 0x48};
    uint8_t data[16] = {0x12, 0x28, 0x51, 0xda, 0x74, 0x60, 0xe6, 0x97, 0x98, 0x9b, 0x69, 0x35, 0x9b, 0x2f, 0x4a, 0x8a};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}