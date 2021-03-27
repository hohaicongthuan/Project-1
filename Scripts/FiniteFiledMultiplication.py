# This script is constructed base on the algorithm from https://samiam.org/galois.html
# The algorithm is as follow:
    # Run the following loop eight times:
    # 1. If the low bit of b is set, exclusive or the product p by the value of a
    # 2. Keep track of whether the high (eighth from left) bit of a is set to one
    # 3. Rotate a one bit to the left, discarding the high bit, and making the low bit have a value of zero
    # 4. If a's hi bit had a value of one prior to this rotation, exclusive or a with the hexadecimal number 0x1b
    # 5. Rotate b one bit to the right, discarding the low bit, and making the high (eighth from left) bit have a value of zero.
    # 6. The product p now has the product of a and b

num_a = int(input("Enter number a: "))
num_b = int(input("Enter number b: "))
product = 0
i = 0

for i in range(8):
    if ((num_b & 1) == 1):
        product ^= num_a
    num_a = num_a << 1
    if ((num_a & 0x80) == 0x80):
        num_a = num_a ^ 0x1b
    num_b = num_b >> 1

print("Product: ", (product % 0x11b) + 3)