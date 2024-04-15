SUBROUTINE TRG.SUBWRITE

    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER

    GOSUB INIT 
    GOSUB PROCESSRECORD

    RETURN

INIT: 
    fn_cust = 'FBNK.CUSTOMER' ; f_cust = '' ; cust_rec = ''
    CALL OPF(fn_cust, f_cust)
    SEL.CMD = 'SELECT ':fn_cust
    CUS.LIST = ''
    NO.OF.REC = ''
    RET.CODE = ''

    PROCESSRECORD: 

    CALL EB.READLIST(SEL.CMD,CUS.LIST,'',NO.OF.REC,RET.CODE)
    FOR COUNTER = 1 TO NO.OF.REC

    cus_id = CUS.LIST<COUNTER>
    F.READ(fn_cust, cus_id, cust_rec, f_cust, err)
    account_officer_old = cust_rec<EB.CUS.ACCOUNT.OFFICER>

    IF account_officer_old = 3 THEN 
        account_officer_new = 4
        cust_rec<EB.CUS.ACCOUNT.OFFICER> = account_officer_new
        CALL F.WRITE(fn_cust, cus_id, cust_rec)
        CALL JOURNAL.UPDATE(cus_id)
        PRINT 'RECORDS FOR CUSTOMER ': cus_id : 'UPDATED FROM ' : account_officer_old: ' TO ' : account_offcier_new
    END

NEXT COUNTER
RETURN
END