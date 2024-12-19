#-----------------------------------------------------------------------------
# This Python script generates multiple C files for testing AES encryption 
# and decryption functions. It creates files with random plaintext (pt) and 
# ciphertext (ct) data, with corresponding encryption and decryption keys
#-----------------------------------------------------------------------------
# Author: Behnam Farnaghinejad
#-----------------------------------------------------------------------------


import os
import random

def write_new_c_file(filename, key, data, suffix):
    with open(filename, 'w') as file:
        file.write('#include <stdint.h>\n')
        file.write('#include "aes_asm.h"\n\n')
        file.write('int main(int argc, char* arg[])\n')
        file.write('{\n')
        file.write(f'    uint8_t key[16] = {{{", ".join(hex(x) for x in key)}}};\n')
        file.write(f'    uint8_t data[16] = {{{", ".join(hex(x) for x in data)}}};\n\n')
        if suffix == "encryption":
            file.write('    KeyExpansion_ENC(RoundKey, key);\n')
            file.write('    AES_Cipher(data, RoundKey);\n\n')
        elif suffix == "decryption":
            file.write('    KeyExpansion_DEC(RoundKey, key);\n')
            file.write('    AES_InvCipher(data, RoundKey);\n\n')
        file.write('    return 0;\n')
        file.write('}\n')

def generate_new_files(pt_or_ct, key, suffix, dest_folder):
    hex_key = ''.join('{:02x}'.format(x) for x in key)
    hex_data = ''.join('{:02x}'.format(x) for x in pt_or_ct)
    filename = os.path.join(dest_folder, f'aes_asm_single_{suffix}_{hex_data}_{hex_key}.c')
    write_new_c_file(filename, key, pt_or_ct, suffix)

def generate_random_bytes(length):
    return [random.randint(0, 255) for _ in range(length)]

def generate_random_files(num_files, dest_folder):
    for i in range(num_files):
        key = generate_random_bytes(16)
        pt = generate_random_bytes(16)
        ct = generate_random_bytes(16)
        generate_new_files(pt, key, "encryption", dest_folder)
        generate_new_files(ct, key, "decryption", dest_folder)

def main():
    dest_folder = "./" #input("Enter the destination folder path: ")
    num_files = 500
    generate_random_files(num_files, dest_folder)

if __name__ == "__main__":
    main()
