#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x36, 0xa5, 0xc, 0x2a, 0x8c, 0x88, 0xc, 0x2c, 0xc5, 0x6f, 0x4a, 0x64, 0x76, 0xfa, 0x70, 0x24};
    uint8_t data[16] = {0x1f, 0xa1, 0x6f, 0xce, 0xb2, 0xca, 0xe4, 0x89, 0xdc, 0xae, 0xe9, 0x2a, 0x28, 0xc7, 0xee, 0xb};

    KeyExpansion_DEC(RoundKey, key);
    AES_InvCipher(data, RoundKey);

    return 0;
}
