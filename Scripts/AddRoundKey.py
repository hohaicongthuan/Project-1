# This is just a function that basically XOR two 4 x 4 matrices

# XOR two matrix with the same dimension
def MatrixXOR(a, b):
    for i in range(4):
        for j in range(4):
            a[i][j] = a[i][j] ^ b[i][j]
    return a
