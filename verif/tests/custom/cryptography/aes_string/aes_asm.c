/*
Testing AES128

ECB encrypt verbose:

plain text:
31323334353637383930616263646566
ae2d8a571e03ac9c9eb76fac45af8e51
30c81c46a35ce411e5fbc1191a0a52ef
f69f2445df4f9b17ad2b417be66c3710

key:
2d6265686e616d6661726e616768692d

ciphertext:
fca7a49464adacfd1fde49b51c2b3df3
5ce5080baf66ef008f448332656447b3
a503982b0a17d6ca1a5e8a166c0d7892
58525413891f713eb05473fa9c5dfead
*/

#include <stdio.h>
//#include <string.h>
#include <stdint.h>
//#include <stdlib.h>
#include "aes_asm.h"

//void phex(uint8_t* str);
void test_encrypt_ecb(char *input, char *key_string);
void test_decrypt_ecb(char *input, char *key_string);

int main(int argc, char* arg[])
{

    // Input Plain Text
   char *plain_text = "Test Message for AES Encryption and Decryption.";
    // Input Key
   char *key = "-behnamfarnaghi-";

    test_encrypt_ecb(plain_text,key);
    
    char *cipher_text = "ef235daa59923a598c36479144241df3d825346cb60df571059fb58c3e37c1e08fe42b15f77a2bbcace9a7d9485f2f5d";

    test_decrypt_ecb(cipher_text,key);

    return 0;
}

/*
// prints string as hex
void phex(uint8_t* str)
{

#if defined(AES256)
    uint8_t len = 32;
#elif defined(AES192)
    uint8_t len = 24;
#elif defined(AES128)
    uint8_t len = 16;
#endif

    unsigned char i;
    for (i = 0; i < len; ++i)
        printf("%.2x", str[i]);
    printf("\n");
}
*/

void test_encrypt_ecb(char *input, char *key_string)
{
    struct AES_ctx ctx;
    int i;

    //printf("Plain text: \n%s\n", input);
    
    // Covert the text to hex matrix
    uint8_t output[10 * (MAX_COLUMNS + 1)]; 
    int numRows = stringToHexMatrix(input, output);
    //printf("Number of Blocks: %d\n", numRows);
    //printf("Blocks: \n");
    //for (i = 0; i < numRows; i++) {
        //phex(output[i]);
    //}
    //printf("\n");

    //printf("Key: \n%s\n", key_string);
    uint8_t key_code[1][MAX_COLUMNS+1];
    stringToHexMatrix(key_string, key_code);
    //printf("Converted Key: \n");
    //phex(key_code[0]);

    AES_init_ctx(&ctx, key_code[0]);

    //printf("\nEncrypted Blocks: \n");
    for (i = 0; i < numRows; ++i)
    {
      AES_ECB_encrypt(&ctx, output+i*16);
      //phex(output[i]);
    }
    //printf("\n");
}


void test_decrypt_ecb(char *input, char *key_string)
{

    struct AES_ctx ctx;
    int i;

    uint8_t output[10 * (MAX_COLUMNS + 1)];
    int numRows = splitHexToBytes(input, output);
    /*printf("Number of Blocks: %d\n", numRows);
    printf("Blocks: \n");
        for (int i = 0; i < numRows; i++) {
            for (int j = 0; j < 16; j++) {
                printf("%02x", output[i][j]);
            }
            printf("\n");
        }*/
    //printf("\n");

    //printf("Key: \n%s\n", key_string);
    uint8_t key_code[1][MAX_COLUMNS+1];
    stringToHexMatrix(key_string, key_code);
    //printf("Converted Key: \n");
    //phex(key_code[0]);

    AES_init_ctx(&ctx, key_code[0]);
    
    //printf("\nDecrypted Text: \n");
    for (i = 0; i < numRows; ++i)
    {
      AES_ECB_decrypt(&ctx, output+i*16);
      //printf("%s",output[i]);gt
    }
    //printf("\n");
    
}