#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x8, 0x4d, 0x56, 0x14, 0x76, 0xa4, 0xa7, 0xea, 0x53, 0xe4, 0xe4, 0x98, 0x25, 0xba, 0x5, 0x4f};
    uint8_t data[16] = {0x38, 0x18, 0x17, 0x4b, 0x14, 0xa5, 0x66, 0xed, 0xf8, 0xbb, 0xce, 0x82, 0x34, 0x41, 0x75, 0xa4};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}