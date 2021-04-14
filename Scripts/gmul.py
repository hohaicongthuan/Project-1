# The algorithm for this gmul function is:
#   0. Initialise product with 0. Prepare an eight-time loop
#       1. If the LSB of b is set product = product XOR a
#       2. If the MSB of a is set a = a << 1 and a = a XOR 0x11b. Otherwise, just shift a one bit to the left
#       3. Shift b one bit to the right

# Multiply a & b in finite field
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
