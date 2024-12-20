#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x9d, 0xef, 0xd9, 0x77, 0xb3, 0x3a, 0x55, 0x62, 0x55, 0xf8, 0x52, 0x3a, 0xa2, 0x17, 0x66, 0xfe};
    uint8_t data[16] = {0xe6, 0xff, 0x99, 0x52, 0x19, 0xe6, 0x45, 0xb1, 0x46, 0x45, 0x6c, 0x3e, 0x80, 0xb0, 0xa, 0x55};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
