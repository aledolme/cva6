#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x72, 0xa, 0xdb, 0x8b, 0xae, 0xa5, 0x3e, 0xe9, 0x3e, 0xd4, 0xf5, 0x5a, 0xb9, 0x5c, 0xf7, 0x97};
    uint8_t data[16] = {0x7a, 0x33, 0x1e, 0x76, 0xe3, 0xe1, 0xc, 0x30, 0xf3, 0x6d, 0xe, 0x52, 0x74, 0xce, 0xfd, 0x8e};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}