#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x75, 0x63, 0x5b, 0x4f, 0x25, 0xb1, 0xb6, 0x6f, 0x39, 0x33, 0xc8, 0xd4, 0xdc, 0xfb, 0xf0, 0x0};
    uint8_t data[16] = {0x9a, 0x46, 0xd1, 0x6f, 0x81, 0xbc, 0xa4, 0x5e, 0x38, 0x2c, 0x4e, 0xc8, 0xc7, 0x62, 0x7c, 0x24};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}