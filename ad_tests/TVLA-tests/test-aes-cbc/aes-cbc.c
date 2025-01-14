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

    // Example Data (16 bytes)
    //uint8_t data[10][16] = {0};
    uint8_t plaintext[16] = {0};
    uint8_t data[16] = {0};
    uint32_t num_traces = 10;

    output("original: 0x", data, 16);
    
    AES_CTX ctx;
    AES_EncryptInit(&ctx, key, iv);

    for (unsigned int i = 0; i < num_traces; i++) {
        AES_Encrypt(&ctx, plaintext, data);
        output("\nencrypted: 0x", data, 16);
    }
    
    
    // Decryption Example
    AES_DecryptInit(&ctx, key, iv);
    AES_Decrypt(&ctx, data, data);
    
    output("\ndecrypted: 0x", data, 16);
    
    return 0;
}