#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x5d, 0x4c, 0x1f, 0xfe, 0x47, 0xb0, 0x2f, 0x64, 0x50, 0x80, 0x11, 0xd3, 0xc9, 0x92, 0x90, 0x20};
    uint8_t data[16] = {0x92, 0xe, 0xee, 0xab, 0x57, 0x8c, 0xf4, 0x3b, 0x46, 0xa1, 0x7b, 0xfe, 0x14, 0x36, 0x56, 0x39};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
