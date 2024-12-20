#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xb, 0x95, 0x0, 0xd1, 0xda, 0xe2, 0x15, 0xf9, 0x72, 0xe7, 0xf8, 0xa2, 0xd6, 0xa6, 0x24, 0x9d};
    uint8_t data[16] = {0xc8, 0x46, 0x74, 0x3c, 0xcc, 0x90, 0x46, 0x2a, 0x8f, 0xf7, 0xbd, 0xb7, 0xaf, 0xe2, 0xb9, 0xb7};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
