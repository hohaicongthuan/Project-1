# This script performs the mix columns stage in AES algorithm
# [[2 3 1 1],
#  [1 2 3 1],
#  [1 1 2 3],
#  [3 1 1 2]]

import numpy as np

# The algorithm for this gmul function is:
    # 0. Initialise product with 0. Prepare an eight-time loop
        # 1. If the LSB of b is set product = product XOR a
        # 2. If the MSB of a is set a = a << 1 and a = a XOR 0x11b. Otherwise, just shift a one bit to the left
        # 3. Shift b one bit to the right

def gmul(a, b):
    i = 0
    product = 0

    for i in range(8):
        if ((b & 1) == 1):
            product ^= a
        
        if ((a & 0x80) == 0x80):
            a = a << 1
            a = a ^ 0x11b
        else:
            a = a << 1
        
        b = b >> 1

    return int(product)

MixColumnMatrix = [[2, 3, 1, 1], [1, 2, 3, 1], [1, 1, 2, 3], [3, 1, 1, 2]]

R = int(input("Enter the number of rows: "))
C = int(input("Enter the number of columns: "))

print("Enter the entries in a single line (separated by space): ")

# User input of entries in a
# single line separated by space
entries = list(map(int, input().split()))
matrix = np.array(entries).reshape(R, C)

# Variables initialisation
i = 0
j = 0
k = 0
result = np.zeros((R, C))

# Iterate through rows
for i in range(len(MixColumnMatrix)):
   # Iterate through columns
   for j in range(len(matrix[0])):
       # Iterate through rows
       for k in range(len(matrix)):
           temp_a = int(gmul(MixColumnMatrix[i][k], matrix[k][j]))
           temp_b = int(result[i][j])
           temp = temp_a ^ temp_b
           result[i][j] = temp

# For printing the matrix
print(result)

# num_a = int(input("Enter number a: "))
# num_b = int(input("Enter number b: "))

# print("Product: ", gmul(num_a, num_b))
