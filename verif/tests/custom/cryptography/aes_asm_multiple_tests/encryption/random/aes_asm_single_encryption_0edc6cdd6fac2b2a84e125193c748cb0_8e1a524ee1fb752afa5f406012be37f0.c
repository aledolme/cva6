#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x8e, 0x1a, 0x52, 0x4e, 0xe1, 0xfb, 0x75, 0x2a, 0xfa, 0x5f, 0x40, 0x60, 0x12, 0xbe, 0x37, 0xf0};
    uint8_t data[16] = {0xe, 0xdc, 0x6c, 0xdd, 0x6f, 0xac, 0x2b, 0x2a, 0x84, 0xe1, 0x25, 0x19, 0x3c, 0x74, 0x8c, 0xb0};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}