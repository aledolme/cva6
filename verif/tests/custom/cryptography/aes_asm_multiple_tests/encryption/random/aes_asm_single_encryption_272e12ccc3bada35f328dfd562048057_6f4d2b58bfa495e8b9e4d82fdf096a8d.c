#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x6f, 0x4d, 0x2b, 0x58, 0xbf, 0xa4, 0x95, 0xe8, 0xb9, 0xe4, 0xd8, 0x2f, 0xdf, 0x9, 0x6a, 0x8d};
    uint8_t data[16] = {0x27, 0x2e, 0x12, 0xcc, 0xc3, 0xba, 0xda, 0x35, 0xf3, 0x28, 0xdf, 0xd5, 0x62, 0x4, 0x80, 0x57};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}