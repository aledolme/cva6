#include "aes.h"
#include <stdint.h>

void test_decrypt_ecb(char *input, char *key_string);

int main(int argc, char* arg[])
{
    // Cipher Text
   char *cipher_text = "ef235daa59923a598c36479144241df3d825346cb60df571059fb58c3e37c1e08fe42b15f77a2bbcace9a7d9485f2f5d";

    // Input Key
   char *key = "-behnamfarnaghi-";

    // Decryption
    test_decrypt_ecb(cipher_text,key);

    return 0;
}

void test_decrypt_ecb(char *input, char *key_string)
{

    struct AES_ctx ctx;
    int i;

    int numRows = 0;
    uint8_t** output = splitHexToBytes(input, &numRows);  

    uint8_t key_code[1][MAX_COLUMNS+1];
    stringToHexMatrix(key_string, key_code);

    AES_init_ctx(&ctx, key_code[0]);

    for (i = 0; i < numRows; ++i)
    {
      AES_ECB_decrypt(&ctx, output[i]);
    }  
}