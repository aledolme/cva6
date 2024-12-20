#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x86, 0x63, 0xc1, 0xe1, 0x9, 0xe4, 0xa2, 0xd2, 0x4b, 0x23, 0xaf, 0x11, 0xf4, 0xfb, 0x70, 0xf1};
    uint8_t data[16] = {0xef, 0xdc, 0x87, 0x25, 0x49, 0x63, 0x76, 0x42, 0x1, 0x79, 0x73, 0x45, 0xf5, 0x38, 0x3c, 0x26};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
