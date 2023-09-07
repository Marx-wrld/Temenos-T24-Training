PROGRAM MX.TestProg

    $USING MX.Training

    PROMPT 'Enter a text to log: '
    INPUT text
    CRT

    MX.Training.Logger(text, err)
    IF err NE '' THEN CRT err ELSE CRT 'OK'

END