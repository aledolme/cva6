#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x4c, 0x4, 0x70, 0x55, 0x59, 0x59, 0x81, 0x26, 0x8d, 0x4b, 0xf0, 0xeb, 0xa6, 0x7, 0xc4, 0x6f};
    uint8_t data[16] = {0x46, 0xa0, 0x6a, 0x32, 0xe5, 0x65, 0x53, 0x25, 0xd2, 0x82, 0x7a, 0x80, 0xbc, 0x3a, 0xd9, 0xbc};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
