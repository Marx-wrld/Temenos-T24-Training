    SUBROUTINE GREETING.SVC.LOAD


    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_GREETING.SVC.COMMON

    fn_cust = 'F.CUSTOMER'
    f_cust = ''
    CALL OPF(fn_cust, f_cust)

    RETURN

END