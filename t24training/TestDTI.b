PROGRAM TestDTI

    DEFFUN DTI

    gross_income = 12000
    total_debts = 3452

    CALL CalculateDTI(gross_income, total_debts, dti)
    CRT "DTI from subr is ": dti

    dti2 = DTI(gross_income, total_debts)
    CRT "DTI from func is ": dti2

END