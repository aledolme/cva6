#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x58, 0x88, 0x12, 0x1b, 0x1b, 0xea, 0x31, 0x6d, 0xf0, 0x78, 0x20, 0xe, 0x15, 0xd2, 0x55, 0x94};
    uint8_t data[16] = {0xe4, 0xbe, 0xc5, 0xa1, 0xb1, 0x80, 0x5f, 0x95, 0xb, 0x95, 0x2, 0x11, 0x7a, 0xd2, 0x5, 0x9d};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
