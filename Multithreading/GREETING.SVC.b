    SUBROUTINE GREETING.SVC(cust_id)
    
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER
    $INSERT MARX.BP I_GREETING.SVC.COMMON

    CALL OCOMO('Processing... ': cust_id)

    CALL.F.READ(fn_cust, cust_id, cust_rec, f_cust, err)
    IF cust_rec EQ '' THEN 
        CALL OCOMO('Error: No customer record found with id ' : cust_id)
        RETURN
END