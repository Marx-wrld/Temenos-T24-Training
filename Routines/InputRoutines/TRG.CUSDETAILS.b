SUBROUTINE TRG.CustomerDetails(cust_id, cust_name, cust_residence)

* Routine to fetch customer name and residence 
* in: cust_id
* out: cust_name, cust_residence

    $INSERT ../T24_BP I_COMMON
    $INSERT ../T24_BP I_EQUATE
    $INSERT ../T24_BP I_F.CUSTOMER

    fn_cust = 'F.CUSTOMER' ; f_cust = '' ; cust_rec = ''

    CALL OPF(fn_cust, f_cust)
    CALL F.READ(fn_cust, cust_id, cust_rec, f_cust, err)

    cust_name = cust_rec<EB.CUS.SHORT.NAME>
    cust_residence = cust_rec<EB.CUS.RESIDENCE>

    RETURN
END