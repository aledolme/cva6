#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xa8, 0x66, 0xde, 0x87, 0x10, 0xcb, 0xe2, 0x65, 0xdd, 0x9f, 0xcc, 0xe3, 0x4d, 0x49, 0xb3, 0x14};
    uint8_t data[16] = {0x0, 0x48, 0x60, 0x5f, 0x1f, 0x9, 0xd3, 0x75, 0xd6, 0xc0, 0x2a, 0xa1, 0x41, 0xd3, 0xae, 0x47};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}