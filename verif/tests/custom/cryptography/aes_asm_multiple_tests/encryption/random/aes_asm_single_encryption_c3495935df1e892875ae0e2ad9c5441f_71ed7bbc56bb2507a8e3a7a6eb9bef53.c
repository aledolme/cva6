#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x71, 0xed, 0x7b, 0xbc, 0x56, 0xbb, 0x25, 0x7, 0xa8, 0xe3, 0xa7, 0xa6, 0xeb, 0x9b, 0xef, 0x53};
    uint8_t data[16] = {0xc3, 0x49, 0x59, 0x35, 0xdf, 0x1e, 0x89, 0x28, 0x75, 0xae, 0xe, 0x2a, 0xd9, 0xc5, 0x44, 0x1f};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}