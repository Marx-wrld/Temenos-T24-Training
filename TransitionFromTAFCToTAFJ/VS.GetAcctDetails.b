$PACKAGE EB.MtdTraining
SUBROUTINE VS.GetAcctDetails(acct_id, details)

    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.ACCOUNT

    details = '{}'

    CALL VS.GetRecord('F.ACCOUNT', acct_id, rec)
    details = '{ "id": "' : acct_id : '", "name": "' : rec<AC.SHORT.TITLE> : '", "currency": "'
    details := rec<AC.CURRENCY> : '", "balance": ' : rec<AC.WORKING.BALANCE> : '}'

    RETURN
END