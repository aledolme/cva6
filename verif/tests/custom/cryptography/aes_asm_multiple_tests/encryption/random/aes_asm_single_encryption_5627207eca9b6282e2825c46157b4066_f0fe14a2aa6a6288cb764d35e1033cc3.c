#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xf0, 0xfe, 0x14, 0xa2, 0xaa, 0x6a, 0x62, 0x88, 0xcb, 0x76, 0x4d, 0x35, 0xe1, 0x3, 0x3c, 0xc3};
    uint8_t data[16] = {0x56, 0x27, 0x20, 0x7e, 0xca, 0x9b, 0x62, 0x82, 0xe2, 0x82, 0x5c, 0x46, 0x15, 0x7b, 0x40, 0x66};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}