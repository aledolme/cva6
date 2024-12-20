#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0xf3, 0x74, 0x88, 0x20, 0xa6, 0x1c, 0x5f, 0x87, 0x39, 0xe, 0xc7, 0x93, 0x27, 0x4a, 0x6b, 0xf8};
    uint8_t data[16] = {0xa3, 0xf9, 0x34, 0x89, 0xdd, 0x75, 0x43, 0x22, 0x5c, 0x69, 0xc2, 0xa8, 0xb7, 0x5a, 0x8f, 0x20};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
