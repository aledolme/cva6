#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x76, 0x84, 0x97, 0x64, 0x46, 0x92, 0x1a, 0x20, 0x37, 0xba, 0x9c, 0x93, 0x23, 0xb0, 0x93, 0x9e};
    uint8_t data[16] = {0x9c, 0xd7, 0x7a, 0x95, 0x78, 0x2c, 0x3a, 0x79, 0x70, 0xf0, 0x72, 0xbd, 0xb1, 0x70, 0xd3, 0x88};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}