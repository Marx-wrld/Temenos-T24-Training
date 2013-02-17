SUBROUTINE TRG.VAL3

    $INSERT ../T24_BP I_COMMON
    $INSERT ../T24_BP I_EQUATE
    $INSERT ../T24_BP I_F.ACCOUNT

    GOSUB INIT_SECTION
    GOSUB PROCESS_SECTION
    RETURN

    INIT_SECTION:

    fn_acc = 'F.ACCOUNT' ; f_acc = '' ; acc_rec = ''
    acc_id = '' ; category = ''

    CALL OPF(fn_acc, f_acc)

    RETURN

    PROCESS_SECTION:

    acc_id = COMI

    CALL F.READ(fn_acc, acc_id, acc_rec, f_acc, err)
    category = acc_rec<AC.CATEGORY>
    RETURN
END
