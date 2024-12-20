#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x6c, 0xff, 0xb6, 0xd2, 0x84, 0x77, 0xa9, 0x64, 0x6c, 0x72, 0xfa, 0xbe, 0x18, 0xb5, 0x8e, 0x36};
    uint8_t data[16] = {0x5d, 0x39, 0xb8, 0x4a, 0xba, 0x6e, 0x8, 0xe4, 0x9b, 0x1f, 0x5f, 0x22, 0xc8, 0x8d, 0xac, 0x58};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
