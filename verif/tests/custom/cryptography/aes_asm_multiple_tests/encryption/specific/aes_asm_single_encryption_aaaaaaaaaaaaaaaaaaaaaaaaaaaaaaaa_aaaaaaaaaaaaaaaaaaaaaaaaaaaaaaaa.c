#include <stdint.h>
#include "aes_asm.h"


int main(int argc, char* arg[])
{

    uint8_t  key [16] = {0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA};
    uint8_t  pt  [16] = {0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA ,0xAA};

    KeyExpansion_ENC(RoundKey, key);
    AES_Cipher(pt, RoundKey);

    return 0;
}
