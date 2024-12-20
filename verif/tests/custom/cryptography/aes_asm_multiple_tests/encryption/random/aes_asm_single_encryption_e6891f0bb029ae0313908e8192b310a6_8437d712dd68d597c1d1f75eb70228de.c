#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x84, 0x37, 0xd7, 0x12, 0xdd, 0x68, 0xd5, 0x97, 0xc1, 0xd1, 0xf7, 0x5e, 0xb7, 0x2, 0x28, 0xde};
    uint8_t data[16] = {0xe6, 0x89, 0x1f, 0xb, 0xb0, 0x29, 0xae, 0x3, 0x13, 0x90, 0x8e, 0x81, 0x92, 0xb3, 0x10, 0xa6};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
