SUBROUTINE TRG.VAL1

* Routine validation to restrict the funds transfer 
* for amount more than 1000/-  (DEBIT AMOUNT)

    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.FUNDS.TRANSFER

    IF COMI NE USD THEN
    ETEXT = 'NOT ALLOWED OTHER THAN USD'
    CALL STORE.END.ERROR
END
RETURN
