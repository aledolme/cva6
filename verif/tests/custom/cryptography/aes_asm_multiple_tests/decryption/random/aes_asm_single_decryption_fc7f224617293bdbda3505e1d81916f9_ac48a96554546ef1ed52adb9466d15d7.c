#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xac, 0x48, 0xa9, 0x65, 0x54, 0x54, 0x6e, 0xf1, 0xed, 0x52, 0xad, 0xb9, 0x46, 0x6d, 0x15, 0xd7};
    uint8_t data[16] = {0xfc, 0x7f, 0x22, 0x46, 0x17, 0x29, 0x3b, 0xdb, 0xda, 0x35, 0x5, 0xe1, 0xd8, 0x19, 0x16, 0xf9};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}