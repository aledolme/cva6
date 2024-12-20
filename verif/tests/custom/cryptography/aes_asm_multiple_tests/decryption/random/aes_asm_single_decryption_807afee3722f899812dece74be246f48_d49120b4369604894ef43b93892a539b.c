#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd4, 0x91, 0x20, 0xb4, 0x36, 0x96, 0x4, 0x89, 0x4e, 0xf4, 0x3b, 0x93, 0x89, 0x2a, 0x53, 0x9b};
    uint8_t data[16] = {0x80, 0x7a, 0xfe, 0xe3, 0x72, 0x2f, 0x89, 0x98, 0x12, 0xde, 0xce, 0x74, 0xbe, 0x24, 0x6f, 0x48};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
