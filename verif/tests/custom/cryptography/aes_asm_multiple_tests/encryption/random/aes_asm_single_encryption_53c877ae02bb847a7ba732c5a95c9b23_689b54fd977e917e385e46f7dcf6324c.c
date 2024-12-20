#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x68, 0x9b, 0x54, 0xfd, 0x97, 0x7e, 0x91, 0x7e, 0x38, 0x5e, 0x46, 0xf7, 0xdc, 0xf6, 0x32, 0x4c};
    uint8_t data[16] = {0x53, 0xc8, 0x77, 0xae, 0x2, 0xbb, 0x84, 0x7a, 0x7b, 0xa7, 0x32, 0xc5, 0xa9, 0x5c, 0x9b, 0x23};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
