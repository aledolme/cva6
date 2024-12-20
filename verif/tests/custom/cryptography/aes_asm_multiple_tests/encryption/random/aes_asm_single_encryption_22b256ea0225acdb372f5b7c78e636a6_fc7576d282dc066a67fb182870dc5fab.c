#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xfc, 0x75, 0x76, 0xd2, 0x82, 0xdc, 0x6, 0x6a, 0x67, 0xfb, 0x18, 0x28, 0x70, 0xdc, 0x5f, 0xab};
    uint8_t data[16] = {0x22, 0xb2, 0x56, 0xea, 0x2, 0x25, 0xac, 0xdb, 0x37, 0x2f, 0x5b, 0x7c, 0x78, 0xe6, 0x36, 0xa6};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
