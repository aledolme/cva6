#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xf3, 0x7b, 0xc1, 0x1c, 0x5f, 0xb9, 0xbd, 0xb6, 0x87, 0x76, 0x6c, 0x1e, 0x27, 0x9, 0x18, 0xac};
    uint8_t data[16] = {0xf3, 0x93, 0xc4, 0x1c, 0x90, 0xf0, 0xd0, 0x85, 0x43, 0x9f, 0xe1, 0x6b, 0x71, 0x6a, 0x57, 0x1c};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}