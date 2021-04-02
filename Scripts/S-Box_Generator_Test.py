import numpy as np

# This script generates S-Box and its inverse
# This script is written based on my understanding about the
# algorithm that generates the S-Box

# Rotate a byte with a specified amount
def ROTL8(x, shift):
	return (x << shift) | (x >> (8 - shift))

# Multiplication in finite field function
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

sbox = np.zeros(256, np.uint8)
i_sbox = np.zeros(256, np.uint8)
count, p, q = 0, 1, 1

for i in range(256):
	# Multiply p by 3
	p = gmul(p, 0x03)

	# Divide q by 3 (equals multiplication by 0xF6)
	q = gmul(q, 0xF6)

	# Compute the affine transformation
	xformed = q ^ ROTL8(q, 1) ^ ROTL8(q, 2) ^ ROTL8(q, 3) ^ ROTL8(q, 4)

	sbox[p] = xformed ^ 0x63
	i_sbox[sbox[p]] = p

# 0 is a special case since it has no inverse
sbox[0] = 0x63

# Print S-Box
for i in range(256):
	if (count < 16):
		count += 1
	else:
		count = 1
		print()
	out = hex(sbox[i]).replace("0x", "").zfill(2)
	print(out, " ", sep="", end="")

print()

# Print Inverse S-Box
for i in range(256):
	if (count < 16):
		count += 1
	else:
		count = 1
		print()
	out = hex(i_sbox[i]).replace("0x", "").zfill(2)
	print(out, " ", sep="", end="")