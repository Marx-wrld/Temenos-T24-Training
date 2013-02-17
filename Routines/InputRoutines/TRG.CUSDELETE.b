SUBROUTINE TRG.DELETE

* Routine to delete a customer
* in: cust_id

    $INSERT ../T24_BP I_COMMON
    $INSERT ../T24_BP I_EQUATE
    $INSERT ../T24_BP I_F.CUSTOMER

    GOSUB INIT
    GOSUB PROCESSRECORD

    RETURN

INIT:
    fn_cust = 'F.CUSTOMER' ; f_cust = '' ; cust_rec = ''
    Y.CUSID = '111698'
    CALL OPF(fn_cust, f_cust)

PROCESSRECORD: 
    CALL F.DELETE(fn_cust, Y.CUSID)
    CALL JOURNAL.UPDATE(Y.CUSID)
    RETURN
END