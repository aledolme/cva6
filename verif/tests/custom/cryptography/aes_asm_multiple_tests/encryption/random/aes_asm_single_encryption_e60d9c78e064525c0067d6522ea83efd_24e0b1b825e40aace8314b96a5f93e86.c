#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x24, 0xe0, 0xb1, 0xb8, 0x25, 0xe4, 0xa, 0xac, 0xe8, 0x31, 0x4b, 0x96, 0xa5, 0xf9, 0x3e, 0x86};
    uint8_t data[16] = {0xe6, 0xd, 0x9c, 0x78, 0xe0, 0x64, 0x52, 0x5c, 0x0, 0x67, 0xd6, 0x52, 0x2e, 0xa8, 0x3e, 0xfd};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}