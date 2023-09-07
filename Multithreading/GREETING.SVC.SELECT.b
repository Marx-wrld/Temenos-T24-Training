    SUBROUTINE GREETING.SVC.SELECT


    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_GREETING.SVC.COMMON

    sel_cmd = 'SELECT ' : fn_cust
    CALL EB.READLIST(sel_cmd, sel_list, '', total_rec, ret_code)
    CALL BATCH.BUILD.LIST('', sel_list)
    
    RETURN

END