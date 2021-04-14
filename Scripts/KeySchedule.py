# This function schedules a 256-bit key into 15 round keys

RoundConstant = [[0x01, 0x00, 0x00, 0x00],
                 [0x02, 0x00, 0x00, 0x00],
                 [0x04, 0x00, 0x00, 0x00],
                 [0x08, 0x00, 0x00, 0x00],
                 [0x10, 0x00, 0x00, 0x00],
                 [0x20, 0x00, 0x00, 0x00],
                 [0x40, 0x00, 0x00, 0x00]]

# Rotate word one bit to the left
def RotWord(a):
    a[0], a[1], a[2], a[3] = a[3], a[0], a[1], a[2]
    return a 

# Subtitute a word
def SubWord(a):
    for i in range(len(a)):
        x = (a[i] & 0xF0) >> 4
        y = a[i] & 0x0F
        a[i] = SubBox[x][y]
    return a

# XOR two words
def XORWord(a, b):
    for i in range(len(a)):
        a[i] = a[i] ^ b[i]
    return a

def KeySchedule(key):
