#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xda, 0x86, 0x9b, 0xba, 0xc1, 0xf1, 0x24, 0x47, 0x8e, 0x92, 0x65, 0xda, 0x20, 0xd8, 0x55, 0x31};
    uint8_t data[16] = {0xfd, 0xb6, 0xd6, 0x56, 0xce, 0xa7, 0x73, 0x22, 0xea, 0xf0, 0x81, 0x7b, 0x3a, 0x8a, 0x7b, 0xa0};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}