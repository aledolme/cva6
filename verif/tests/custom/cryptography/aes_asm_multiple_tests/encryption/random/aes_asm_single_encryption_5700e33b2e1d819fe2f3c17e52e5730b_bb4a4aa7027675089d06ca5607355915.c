#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xbb, 0x4a, 0x4a, 0xa7, 0x2, 0x76, 0x75, 0x8, 0x9d, 0x6, 0xca, 0x56, 0x7, 0x35, 0x59, 0x15};
    uint8_t data[16] = {0x57, 0x0, 0xe3, 0x3b, 0x2e, 0x1d, 0x81, 0x9f, 0xe2, 0xf3, 0xc1, 0x7e, 0x52, 0xe5, 0x73, 0xb};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
