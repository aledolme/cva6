#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xff, 0x52, 0x1e, 0xb5, 0x7, 0x79, 0xb2, 0x95, 0x81, 0x25, 0x3, 0x5, 0x82, 0xa6, 0xbc, 0xcd};
    uint8_t data[16] = {0x91, 0xc3, 0x7e, 0x30, 0x73, 0x96, 0x6d, 0x61, 0x39, 0x52, 0x4d, 0x77, 0x7a, 0x97, 0x8f, 0xac};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}