PROGRAM DimensArr

    rows = 2
    cols = 3

    DIM arr(rows, cols)
    arr(1, 1) = 1
    arr(1, 2) = 2
    arr(1, 3) = 3
    arr(2, 1) = 4
    arr(2, 2) = 5
    arr(2, 3) = 6

    FOR r = 1 TO rows
        FOR c = 1 TO cols 
            *CRT arr(r, c)
            *Printing as a matrix
             CRT @(c, r): arr(r, c)
        NEXT c 
    NEXT r   

    

END