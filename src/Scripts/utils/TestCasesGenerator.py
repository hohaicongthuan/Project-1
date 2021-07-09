from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes

NUM_TEST_CASES = 1000
CIPHER_KEY_FILE = 'TestCase_Cipher_Key.txt'             # Name of the file that contains a list of cipher keys for testing
PLAINTEXT_FILE = 'TestCase_Plaintext.txt'               # Name of the file that contains a list of plaintext for encryption testing
CIPHERTEXT_FILE = 'TestCase_Ciphertext.txt'             # Name of the file that contains a list of ciphertext for decryption testing
EXP_PLAINTEXT_FILE = 'TestCase_Plaintext.expected'      # Name of the file that contains a list of expected results for decryption testing
EXP_CIPHERTEXT_FILE = 'TestCase_Ciphertext.expected'    # Name of the file that contains a list of expected results for encryption testing

key_file = open(CIPHER_KEY_FILE, "w")
plaintext_file = open(PLAINTEXT_FILE, "w")
ciphertext_file = open(CIPHERTEXT_FILE, "w")
exp_plaintext_file = open(EXP_PLAINTEXT_FILE, "w")
exp_ciphertext_file = open(EXP_CIPHERTEXT_FILE, "w")

for n in range(NUM_TEST_CASES):
    key = get_random_bytes(32)
    for i in key[::-1]:
        key_file.write(hex(i).replace('0x', '').zfill(2))
    key_file.write("\n")

    plaintext = get_random_bytes(16)
    for i in plaintext[::-1]:
        plaintext_file.write(hex(i).replace('0x', '').zfill(2))
        exp_plaintext_file.write(hex(i).replace('0x', '').zfill(2))
    plaintext_file.write("\n")
    exp_plaintext_file.write("\n")

    cipher = AES.new(key, AES.MODE_ECB)

    ciphertext = cipher.encrypt(plaintext)
    for i in ciphertext[::-1]:
        ciphertext_file.write(hex(i).replace('0x', '').zfill(2))
        exp_ciphertext_file.write(hex(i).replace('0x', '').zfill(2))
    ciphertext_file.write("\n")
    exp_ciphertext_file.write("\n")

key_file.close()
plaintext_file.close()
ciphertext_file.close()
exp_plaintext_file.close()
exp_ciphertext_file.close()