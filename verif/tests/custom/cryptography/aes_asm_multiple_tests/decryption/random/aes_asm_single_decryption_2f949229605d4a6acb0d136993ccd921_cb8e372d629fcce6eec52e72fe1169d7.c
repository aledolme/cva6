#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xcb, 0x8e, 0x37, 0x2d, 0x62, 0x9f, 0xcc, 0xe6, 0xee, 0xc5, 0x2e, 0x72, 0xfe, 0x11, 0x69, 0xd7};
    uint8_t data[16] = {0x2f, 0x94, 0x92, 0x29, 0x60, 0x5d, 0x4a, 0x6a, 0xcb, 0xd, 0x13, 0x69, 0x93, 0xcc, 0xd9, 0x21};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}