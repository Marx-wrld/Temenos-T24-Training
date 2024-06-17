SUBROUTINE VSL.VR

    $INSERT ../T24_BP I_COMMON
    $INSERT ../T24_BP I_EQUATE
    $INSERT ../T24_BP I_F.FUNDS.TRANSFER

    * Fetch the debit account number
    DEBIT.ACCOUNT.NO = R.NEW(FT.DEBIT.ACCT.NO)

    IF DEBIT.ACCOUNT.NO THEN
        * Fetch the currency of the credit account
        CREDIT.CURRENCY = R.NEW(FT.CREDIT.CURRENCY)
        
        * Set the debit account currency to match the credit account currency
        R.NEW(FT.DEBIT.CURRENCY) = CREDIT.CURRENCY
    END

    RETURN
END
