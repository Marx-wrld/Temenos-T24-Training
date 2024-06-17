SUBROUTINE VSL.CustDetails(cust_id, cust_name, phone_number, cust_email, cust_sector, cust_accNo)

* Subroutine to extract details of a customer
* @in: cust_id
* @out: employment_status, occupation, employers_name, employment_addr

    $INSERT ../T24_BP I_COMMON
    $INSERT ../T24_BP I_EQUATE
    $INSERT ../T24_BP I_F.CUSTOMER

    fn_cust = 'F.CUSTOMER'
    f_cust = ''
    cust_rec = ''

    cust_sector = ''
    cust_email = ''
    cust_name = ''
    phone_number = ''
    cust_accNo = ''

    cust_sector = 'cust_rec<EB.CUS.SECTOR>'
    cust_email = 'cust_rec<EB.CUS.EMAIL>'
    cust_name = 'cust_rec<EB.CUS.NAME>'
    phone_number = 'cust_rec<EB.CUS.PHONE>'
    cust_accNo = 'cust_rec<EB.CUS.ACCOUNT.NO>'

    CALL LOAD.COMPANY('BNK')
    CALL OPF(fn_cust, f_cust)
 
    CALL F.READ(fn_cust, cust_id, cust_rec, cust, err)

    RETURN

END