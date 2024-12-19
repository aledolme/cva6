#include "aes.h"

void test_encrypt_ecb(char *input, char *key_string);

int main(int argc, char* arg[])
{

   char *plain_text = "Test Message for AES Encryption and Decryption.";
    // Input Key
   char *key = "-behnamfarnaghi-";

    // Encryption
    test_encrypt_ecb(plain_text,key);

    return 0;
}

void test_encrypt_ecb(char *input, char *key_string)
{
    struct AES_ctx ctx;
    int i;

    uint8_t output[100][MAX_COLUMNS + 1]; 
    int numRows = stringToHexMatrix(input, output);

    uint8_t key_code[1][MAX_COLUMNS+1];
    stringToHexMatrix(key_string, key_code);

    AES_init_ctx(&ctx, key_code[0]);

    for (i = 0; i < numRows; ++i)
    {
      AES_ECB_encrypt(&ctx, output[i]);
    }
}
