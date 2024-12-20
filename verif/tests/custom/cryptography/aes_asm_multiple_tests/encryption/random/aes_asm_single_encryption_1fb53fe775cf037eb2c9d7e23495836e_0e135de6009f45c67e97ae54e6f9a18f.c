#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xe, 0x13, 0x5d, 0xe6, 0x0, 0x9f, 0x45, 0xc6, 0x7e, 0x97, 0xae, 0x54, 0xe6, 0xf9, 0xa1, 0x8f};
    uint8_t data[16] = {0x1f, 0xb5, 0x3f, 0xe7, 0x75, 0xcf, 0x3, 0x7e, 0xb2, 0xc9, 0xd7, 0xe2, 0x34, 0x95, 0x83, 0x6e};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
