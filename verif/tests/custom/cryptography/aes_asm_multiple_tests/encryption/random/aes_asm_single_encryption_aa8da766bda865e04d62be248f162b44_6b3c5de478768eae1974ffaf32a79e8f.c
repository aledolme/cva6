#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x6b, 0x3c, 0x5d, 0xe4, 0x78, 0x76, 0x8e, 0xae, 0x19, 0x74, 0xff, 0xaf, 0x32, 0xa7, 0x9e, 0x8f};
    uint8_t data[16] = {0xaa, 0x8d, 0xa7, 0x66, 0xbd, 0xa8, 0x65, 0xe0, 0x4d, 0x62, 0xbe, 0x24, 0x8f, 0x16, 0x2b, 0x44};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
