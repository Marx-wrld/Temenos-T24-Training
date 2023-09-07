PROGRAM VS.ReadFile

    dir = '../bnk.interface/EBANK.IN'
    filename = 'transaction.csv'

    OPENSEQ dir, filename TO ptr THEN
        LOOP
            READSEQ line FROM ptr ELSE BREAK
            CRT line
        REPEAT
    END ELSE CRT 'Failed to open ': filename

    CLOSESEQ ptr
END