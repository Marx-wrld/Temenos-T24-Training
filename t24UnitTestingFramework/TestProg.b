PROGRAM TestProg

    $USING EB.MtdTraining

    EB.MtdTraining.ReadFile('', 'transactions.csv', data, err)
    numRec = DCOUNT(data, @FM)

    FOR idx = 2 TO numRec
        rec = CHANGE(data<idx>, ',', @FM)
        txnRec = FMT(rec<EB.MtdTraining.txn.Sn>, 'R%3') : ' | '
        txnRec = OCONV(ICONV(rec<EB.MtdTraining.txn.Date>, 'D'), 'D') : ' | '
        txnRec = FMT(rec<EB.MtdTraining.txn.DrAcct>, 'R#3-#5-#4-#4') : ' | '
        txnRec = FMT(rec<EB.MtdTraining.txn.CrAcct>, 'R#3-#6-#3') : ' | '
        txnRec = rec<EB.MtdTraining.txn.Currency> : ' | '
        txnRec = FMT(rec<EB.MtdTraining.txn.Amount>, 'R#12,2')

        CRT txnRec
    NEXT idx
END