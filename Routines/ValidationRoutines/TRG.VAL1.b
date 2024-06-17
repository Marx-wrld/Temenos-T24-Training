SUBROUTINE TRG.VAL1

* Routine validation to restrict the funds transfer 
* for amount more than 1000/-  (DEBIT AMOUNT)

    $INSERT ../T24_BP I_COMMON
    $INSERT ../T24_BP I_EQUATE
    $INSERT ../T24_BP I_F.FUNDS.TRANSFER

    IF COMI NE USD THEN
    ETEXT = 'NOT ALLOWED OTHER THAN USD'
    CALL STORE.END.ERROR

    RETURN
END
