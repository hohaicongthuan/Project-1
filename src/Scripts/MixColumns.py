# Mix columns operation

import gmul

MixColumnMatrix =  [[0x02, 0x03, 0x01, 0x01],
                    [0x01, 0x02, 0x03, 0x01],
                    [0x01, 0x01, 0x02, 0x03],
                    [0x03, 0x01, 0x01, 0x02]]

# Mix Columns
def MixColumn(matrix):
    # Iterate through rows
    for i in range(len(MixColumnMatrix)):
        # Iterate through columns
        for j in range(len(matrix[0])):
            # Iterate through rows
            for k in range(len(matrix)):
                temp_a = int(gmul(MixColumnMatrix[i][k], matrix[k][j]))
                temp_b = int(result[i][j])
                temp = temp_a ^ temp_b
                result[i][j].append(temp)
    return result
