# KEY EXPANSION PSEUDO CODE

```Pascal
// [Nb]    Number of columns (32-bit words) comprising the State. For this standard Nb = 4.
// [Nk]    Number of 32-bit words comprising the Cipher Key. For this standard Nk = 8.
// [Nr]    Number of rounds, which is a function of Nk and Nb (which is fixed). For this standard, Nr = 14.

KeyExpansion(byte key[4 * Nk], word w[Nb * (Nr + 1)], Nk)
begin
    word temp
    i = 0
    while (i < Nk)
        w[i] = word(key[4 * i], key[4 * i + 1], key[4 * i + 2], key[4 * i + 3])
        i = i + 1
    end while
    i = Nk
    while (i < Nb * (Nr + 1))
        temp = w[i - 1]
        if (i mod Nk = 0)
            temp = SubWord(RotWord(temp)) xor Rcon[i / Nk]
        else if (Nk > 6 and i mod Nk = 4)
            temp = SubWord(temp)
        end if
        w[i] = w[i - Nk] xor temp
        i = i + 1
    end while
end 
```