#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x7a, 0x4e, 0x43, 0xdd, 0xa6, 0xe2, 0xaf, 0x71, 0x5, 0x73, 0xe2, 0x4f, 0x4, 0x9b, 0x73, 0x68};
    uint8_t data[16] = {0xe4, 0x4b, 0xc8, 0xe8, 0xf8, 0x7c, 0x28, 0xbf, 0xda, 0x25, 0x74, 0x72, 0x76, 0xe4, 0x25, 0x19};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
