#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "AES_128_CBC.h"

void output(const char* title, uint8_t *data, uint32_t size) {
    printf("%s", title);
    for (uint8_t index = 0; index < size; index++) {
        printf("%02x", data[index]);
    }
    printf("\n");
}

int main() {
    // Example Key (128 bits / 16 bytes)
    uint8_t key[16] = {0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x97, 0x99, 0x89, 0xcf, 0xab, 0x12};

    // Example IV (128 bits / 16 bytes)
    uint8_t iv[16] = {0x0f, 0x47, 0x0e, 0x7f, 0x75, 0x9c, 0x47, 0x0f, 0x42, 0xc6, 0xd3, 0x9c, 0xbc, 0x8e, 0x23, 0x25};

    // Example Data (32 bytes)
    uint8_t data[32] = {0x54, 0x68, 0x69, 0x73, 0x20, 0x69, 0x73, 0x20, 0x61, 0x20, 0x73, 0x69, 0x6d, 0x70, 0x6c, 0x65,
                        0x20, 0x41, 0x45, 0x53, 0x2d, 0x31, 0x32, 0x38, 0x2d, 0x43, 0x42, 0x43, 0x20, 0x65, 0x78, 0x61};

    output("original block 1: 0x", data, 16);
    output("original block 2: 0x", data + 16, 16);

    AES_CTX ctx;
    AES_EncryptInit(&ctx, key, iv);

    for (unsigned int offset = 0; offset < 32; offset += 16) {
        AES_Encrypt(&ctx, data + offset, data + offset);
    }

   

    output("\nencrypted block 1: 0x", data, 16);
    output("encrypted block 2: 0x", data + 16, 16);

    // Decryption Example
    AES_DecryptInit(&ctx, key, iv);

    for (unsigned int offset = 0; offset < 32; offset += 16) {
        AES_Decrypt(&ctx, data + offset, data + offset);
    }

    output("\ndecrypted block 1: 0x", data, 16);
    output("decrypted block 2: 0x", data + 16, 16);

    return 0;
}