    PROGRAM TestProg

    mobile = '3525747565584'
    acc_id = '45764'
    txn = 'USD': @FM : 3249.90 : @FM : 'CR' :'Payment for training'

    CALL VS.SendSMSAlert(mobile, acc_id, txn, text)
    CRT text
END
