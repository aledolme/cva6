#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x10, 0xbe, 0x78, 0x8, 0xd2, 0x39, 0xdb, 0xc5, 0xf0, 0xbc, 0x98, 0xd4, 0xac, 0xdc, 0xa8, 0xec};
    uint8_t data[16] = {0xb6, 0x56, 0x9b, 0x9d, 0x19, 0xf6, 0x6d, 0x7f, 0x76, 0x81, 0xb5, 0xf0, 0xcd, 0x0, 0xc6, 0x1e};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
