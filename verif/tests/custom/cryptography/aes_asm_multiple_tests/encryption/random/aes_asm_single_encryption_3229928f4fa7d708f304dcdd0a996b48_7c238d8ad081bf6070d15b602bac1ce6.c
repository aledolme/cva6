#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x7c, 0x23, 0x8d, 0x8a, 0xd0, 0x81, 0xbf, 0x60, 0x70, 0xd1, 0x5b, 0x60, 0x2b, 0xac, 0x1c, 0xe6};
    uint8_t data[16] = {0x32, 0x29, 0x92, 0x8f, 0x4f, 0xa7, 0xd7, 0x8, 0xf3, 0x4, 0xdc, 0xdd, 0xa, 0x99, 0x6b, 0x48};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}