#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xdb, 0xe0, 0x5d, 0x82, 0x35, 0x3b, 0x17, 0xe4, 0x3d, 0x56, 0x4c, 0x84, 0x63, 0x52, 0xc8, 0xd0};
    uint8_t data[16] = {0xaf, 0x42, 0x26, 0x98, 0xde, 0x1f, 0x80, 0x0, 0x82, 0xd8, 0xc9, 0xfc, 0x7c, 0x87, 0x7c, 0x64};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
