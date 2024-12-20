#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xac, 0x48, 0xa9, 0x65, 0x54, 0x54, 0x6e, 0xf1, 0xed, 0x52, 0xad, 0xb9, 0x46, 0x6d, 0x15, 0xd7};
    uint8_t data[16] = {0xde, 0x8e, 0x49, 0xf6, 0xf4, 0x57, 0xe4, 0x6, 0xdd, 0x46, 0x90, 0x1c, 0x7, 0xd8, 0x26, 0x60};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
