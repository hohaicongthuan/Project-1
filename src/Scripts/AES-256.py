import numpy as np

################################################################################################################
# CONSTANTS DEFINITION                                                                                         #
################################################################################################################

PlainText = [[0x35, 0x75, 0x38, 0x78], 
             [0x2F, 0x41, 0x25, 0x44], 
             [0x2A, 0x47, 0x2D, 0x4B], 
             [0x61, 0x50, 0x64, 0x53]]

CipherKey = [[0x4D, 0x63, 0x51, 0x66], 
             [0x54, 0x6A, 0x57, 0x6E], 
             [0x5A, 0x72, 0x34, 0x75], 
             [0x37, 0x78, 0x21, 0x41], 
             [0x25, 0x44, 0x2A, 0x47], 
             [0x2D, 0x4B, 0x61, 0x4E], 
             [0x64, 0x52, 0x67, 0x55], 
             [0x6B, 0x58, 0x70, 0x32]]

# # Test KeySchedule Function
print(KeySchedule(CipherKey))
# temp = KeySchedule(CipherKey)
# for k in range(60):
#     for i in range(4):
#         for j in range(4):
#             print(hex(int(temp[k][i][j])), " ", end="")
#         print("")
#     print("")
