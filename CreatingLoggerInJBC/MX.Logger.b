$PACKAGE MX.Training
SUBROUTINE MX.Logger(data, err)

    err = ''

    log_file = 'test_' : OCONV(DATE(), 'DG') : '.log'
    log_line = OCONV(TIME(), 'MTS') : '|' : data

    OPENSEQ '../bnk.log', log_file TO file_ptr THEN NULL

    WHITESEQ log_line APPEND TO file_ptr ELSE err = 'ERROR: Failed to write to ': log_file

    CLOSESEQ file_ptr

    RETURN
END