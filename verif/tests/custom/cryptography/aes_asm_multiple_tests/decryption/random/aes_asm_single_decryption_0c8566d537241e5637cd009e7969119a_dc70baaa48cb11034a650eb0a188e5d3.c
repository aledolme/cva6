#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xdc, 0x70, 0xba, 0xaa, 0x48, 0xcb, 0x11, 0x3, 0x4a, 0x65, 0xe, 0xb0, 0xa1, 0x88, 0xe5, 0xd3};
    uint8_t data[16] = {0xc, 0x85, 0x66, 0xd5, 0x37, 0x24, 0x1e, 0x56, 0x37, 0xcd, 0x0, 0x9e, 0x79, 0x69, 0x11, 0x9a};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}