#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xd6, 0x14, 0x8, 0xbd, 0x6f, 0xac, 0x89, 0x8f, 0xcc, 0x52, 0x9c, 0x29, 0xd1, 0x8d, 0x7e, 0x2d};
    uint8_t data[16] = {0x28, 0x4f, 0x0, 0x79, 0xd7, 0x89, 0x6d, 0xd2, 0x5, 0xac, 0x72, 0xaf, 0xc1, 0x15, 0xaf, 0x21};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}