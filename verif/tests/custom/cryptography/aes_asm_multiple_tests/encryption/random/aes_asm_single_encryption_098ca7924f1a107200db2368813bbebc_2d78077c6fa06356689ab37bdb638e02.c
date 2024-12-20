#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2d, 0x78, 0x7, 0x7c, 0x6f, 0xa0, 0x63, 0x56, 0x68, 0x9a, 0xb3, 0x7b, 0xdb, 0x63, 0x8e, 0x2};
    uint8_t data[16] = {0x9, 0x8c, 0xa7, 0x92, 0x4f, 0x1a, 0x10, 0x72, 0x0, 0xdb, 0x23, 0x68, 0x81, 0x3b, 0xbe, 0xbc};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
