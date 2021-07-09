# This script compares the results from AES-256 circuit and expected cipher results

expected_en_results = open('TestCase_Ciphertext.expected', 'r')
en_results = open('encrypt_data.out', 'r')
expected_de_results = open('TestCase_Plaintext.expected', 'r')
de_results = open('decrypt_data.out', 'r')

count = 0
total = 0

for i in en_results:
    temp1 = expected_en_results.readline()
    if (temp1 == i):
        count += 1
    total += 1

print("ENCRYPTION RESULTS ARE ", (count / total * 100), "% MATCHED!", sep='')

count = 0
total = 0

for i in de_results:
    temp1 = expected_de_results.readline()
    if (temp1 == i):
        count += 1
    total += 1

print("DECRYPTION RESULTS ARE ", (count / total * 100), "% MATCHED!", sep='')