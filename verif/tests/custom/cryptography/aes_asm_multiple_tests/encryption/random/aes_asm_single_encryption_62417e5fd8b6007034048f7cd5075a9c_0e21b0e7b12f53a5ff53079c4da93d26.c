#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xe, 0x21, 0xb0, 0xe7, 0xb1, 0x2f, 0x53, 0xa5, 0xff, 0x53, 0x7, 0x9c, 0x4d, 0xa9, 0x3d, 0x26};
    uint8_t data[16] = {0x62, 0x41, 0x7e, 0x5f, 0xd8, 0xb6, 0x0, 0x70, 0x34, 0x4, 0x8f, 0x7c, 0xd5, 0x7, 0x5a, 0x9c};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
