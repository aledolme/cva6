#include <stdint.h>
#include "aes_asm.h"

int main(int argc, char* arg[])
{
    uint8_t key[16] = {0x76, 0x71, 0xd, 0xd2, 0xb3, 0x61, 0x46, 0x7f, 0x8e, 0x49, 0xeb, 0x67, 0xda, 0xa2, 0x11, 0xff};
    uint8_t data[16] = {0xc7, 0xb9, 0xcb, 0x8f, 0x62, 0xc8, 0x86, 0x84, 0xa9, 0xa1, 0x84, 0xd8, 0x37, 0x51, 0x46, 0x23};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(data, RoundKey);

    return 0;
}
