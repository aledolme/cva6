#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x5e, 0x61, 0x29, 0xde, 0x98, 0x75, 0xee, 0x1b, 0xe5, 0x45, 0xe0, 0x92, 0x4b, 0x3d, 0xbd, 0x1d};
    uint8_t data[16] = {0xc4, 0x92, 0x9e, 0x63, 0xac, 0x68, 0x25, 0x17, 0x61, 0x7a, 0x44, 0xa9, 0x31, 0x35, 0x47, 0x17};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}