#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x2f, 0x90, 0x6d, 0xe5, 0x1b, 0xd8, 0x28, 0xfe, 0xee, 0xce, 0x62, 0x7f, 0xd0, 0x9, 0xb7, 0xb2};
    uint8_t data[16] = {0x69, 0x6, 0xe, 0xe8, 0x1b, 0xe4, 0x19, 0xc8, 0x52, 0x89, 0x64, 0xdb, 0x6e, 0x5, 0x62, 0x2b};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}