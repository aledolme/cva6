#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x5c, 0x97, 0x90, 0x16, 0x1, 0x62, 0x1e, 0xa2, 0x84, 0x92, 0xd6, 0x81, 0xfc, 0x16, 0x14, 0xfc};
    uint8_t data[16] = {0x84, 0xdb, 0xc8, 0x3d, 0x33, 0x2a, 0xaa, 0x7, 0x9c, 0x9e, 0x52, 0x8b, 0xd6, 0x9f, 0x6a, 0x4b};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
