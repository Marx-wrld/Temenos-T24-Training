SUBROUTINE TRG.INPT.RTN

    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.ACCOUNT
    $INSERT I_F.FUNDS.TRANSFER

    GOSUB INIT_SECTION
    GOSUB PROCESS_SECTION
    RETURN

    INIT_SECTION:

    fn_acc = 'F.ACCOUNT' ; f_acc = '' ; acc_rec = ''
    acc_id = '' ; category = ''
    CALL OPF(fn_acc, f_acc)
    RETURN

    PROCESS_SECTION:

    acc_id = R.NEW(FT.DEBIT.ACCT.NO)

    CALL F.READ(fn_acc, acc_id, acc_rec, f_acc, err)
    category = acc_rec<AC.CATEGORY>

    IF category LE 1000 OR category GT 1999 THEN
        ETEXT = 'NO OTHER THAN CURRENT ACCOUNT IS ALLOWED FOR DEBIT ACCOUNT'
        CALL STORE.END.ERROR
    END
    RETURN
END