SUBROUTINE VS.CustEmployDetails(cust_id, employment_status, occupation, employers_name, employers_addr)

* Subroutine to fetch employment details of a customer
* @in: cust_id
* @out: employment_status, occupation, employers_name, employment_addr
* Author: Ian Marx (imarx@Marx.io)
* Date: 2023-08-06

    $INSERT T24.BP I_COMMON
    $INSERT T24.BP I_EQUATE
    $INSERT T24.BP I_F.CUSTOMER

    fn_cust = 'F.CUSTOMER'
    f_cust = ''
    cust_rec = ''

    employment_status = ''
    occupation = ''
    employers_name = ''
    employers_addr = ''

    employment_status = 'cust_rec<EB.CUS.EMPLOYMENT.STATUS>'
    occupation = 'cust_rec<EB.CUS.OCCUPATION>'
    employers_name = 'cust_rec<EB.CUS.EMPLOYERS.NAME>'
    employers_addr = 'cust_rec<EB.CUS.EMPLOYERS.ADD>'

    CALL LOAD.COMPANY('BNK')
    CALL OPF(fn_cust, f_cust)
 
    CALL F.READ(fn_cust, cust_id, cust_rec, cust, err)

    RETURN

END