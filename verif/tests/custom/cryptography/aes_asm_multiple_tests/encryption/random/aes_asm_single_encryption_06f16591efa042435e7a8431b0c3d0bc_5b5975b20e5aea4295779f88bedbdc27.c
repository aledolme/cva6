#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x5b, 0x59, 0x75, 0xb2, 0xe, 0x5a, 0xea, 0x42, 0x95, 0x77, 0x9f, 0x88, 0xbe, 0xdb, 0xdc, 0x27};
    uint8_t data[16] = {0x6, 0xf1, 0x65, 0x91, 0xef, 0xa0, 0x42, 0x43, 0x5e, 0x7a, 0x84, 0x31, 0xb0, 0xc3, 0xd0, 0xbc};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}