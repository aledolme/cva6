#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x0, 0x17, 0x83, 0xdf, 0x0, 0x69, 0x71, 0xdd, 0xb0, 0x2a, 0x6, 0xd1, 0x35, 0x18, 0xd3, 0x0};
    uint8_t data[16] = {0x39, 0x33, 0x9f, 0xcb, 0xb4, 0x79, 0xaf, 0xe, 0xb, 0xe0, 0x2, 0x29, 0x6a, 0x46, 0x19, 0x44};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}