#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x40, 0x1c, 0x65, 0x10, 0xee, 0x5a, 0x0, 0xeb, 0xd1, 0x19, 0xdd, 0xf5, 0x9c, 0xb7, 0xac, 0x56};
    uint8_t data[16] = {0x95, 0xee, 0xbb, 0x47, 0xf6, 0xb, 0xe7, 0x9b, 0xa8, 0xb7, 0xd6, 0x27, 0xcb, 0xc, 0xd2, 0x14};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
