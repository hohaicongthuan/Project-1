# Inverse of the shift rows operation in a 4 x 4 matrix 

def InvShiftRows(a):
    # a[0][0], a[0][1], a[0][2], a[0][3] # First row is unchaged
    a[1][0], a[1][1], a[1][2], a[1][3] = a[1][3], a[1][0], a[1][1], a[1][2] # Rotate 1 bit to the right
    a[2][0], a[2][1], a[2][2], a[2][3] = a[2][2], a[2][3], a[2][0], a[2][1] # Rotate 2 bit to the right
    a[3][0], a[3][1], a[3][2], a[3][3] = a[3][1], a[3][2], a[3][3], a[3][0] # Rotate 3 bit to the right

    return a