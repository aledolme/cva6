#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x36, 0x55, 0x6d, 0x9c, 0x3c, 0x9e, 0x50, 0x7d, 0x69, 0x2f, 0x70, 0x1, 0x72, 0xe0, 0xc3, 0xbf};
    uint8_t data[16] = {0x7a, 0x63, 0x36, 0xe8, 0xb5, 0x7f, 0xfd, 0x69, 0x4, 0x91, 0x94, 0x3c, 0x2b, 0x95, 0x7e, 0x19};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}