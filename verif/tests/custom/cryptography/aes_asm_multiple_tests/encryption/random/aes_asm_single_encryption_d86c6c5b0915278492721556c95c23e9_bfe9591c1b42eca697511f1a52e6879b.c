#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xbf, 0xe9, 0x59, 0x1c, 0x1b, 0x42, 0xec, 0xa6, 0x97, 0x51, 0x1f, 0x1a, 0x52, 0xe6, 0x87, 0x9b};
    uint8_t data[16] = {0xd8, 0x6c, 0x6c, 0x5b, 0x9, 0x15, 0x27, 0x84, 0x92, 0x72, 0x15, 0x56, 0xc9, 0x5c, 0x23, 0xe9};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}