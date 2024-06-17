*-----------------------------------------------------------------------------
* <Rating>838</Rating>
*-----------------------------------------------------------------------------
    PROGRAM CUSTOMER.DETAILS

* Input subroutine
    $INSERT ../T24_BP I_COMMON
    $INSERT ../T24_BP I_EQUATE
    $INSERT ../T24_BP I_F.CUSTOMER
   
   
*
*** check if the customer is in the file and then load the details

    INPUT.MODE = ""
    FN.CUSTOMER = "F.CUSTOMER"
    F.CUSTOMER = ""
    R.CUSTOMER = ""
    CALL OPF(FN.CUSTOMER,F.CUSTOMER)
*
    CUST.CODE = FN.CUSTOMER(CUSTOMER.ID)
    RTN.ERROR = ""
    CALL F.READ(FN.CUSTOMER,CUST.CODE,R.CUSTOMER,F.CUSTOMER,RTN.ERROR)
    IF R.CUSTOMER <> "" THEN
        INPUT.MODE = "NOINPUT"
    END
*
 
    FILEPATH = "CUSTOMER_DETAILS"   ;* Path to the file containing customer details to be updated
    OPEN EB.CUSTOMER.DETAILS TO CUSTOMER_DETAILS_FILE ELSE ABORT 201, "CUSTOMER_DETAILS_FILE is opened."

    

LOOP 


     READ CUST.CODE FROM CUSTOMER_DETAILS_FILE, ID ELSE EXIT
     R.CUSTOMER = ""
     R.NEW = "R.NEW(EB.CUSTOMER.DETAILS)"
     


     IF NOT(R.CUSTOMER(CUSTOMER.ID) = "" ) THEN
        R.NEW<EB.CUS.TITLE> = FN.CUSTOMER<SHORT.NAME> ; *EB.CUS.TITLE
        R.NEW<FULL.NAME> = FN.CUSTOMER<NAME.1> ; *FULL.NAME
        R.NEW<CUSTOMER.ID> = FN.CUSTOMER<CUSTOMER.CODE> ; *CUSTOMER.ID
        R.NEW<EB.CUS.NAME.1> = FN.CUSTOMER<NAME.1> ; *EB.CUS.NAME.1
        R.NEW<EB.CUS.ADDRESS> = FN.CUSTOMER<TOWN.COUNTRY>     ; *EB.CUS.ADDRESS
        R.NEW<EB.CUS.STREET> = FN.CUSTOMER<TOWN.COUNTRY>        ; *EB.CUS.STREET
        R.NEW<EB.CUS.RESIDENCE> = FN.CUSTOMER<RESIDENCE>      ; *EB.CUS.RESIDENCE
        R.NEW<EB.CUS.OCCUPATION> = FN.CUSTOMER<OCCUPATION>  ; *EB.CUS.OCCUPATION
        R.NEW<EB.CUS.JOB.TITLE> = FN.CUSTOMER<TITLE> ; *EB.CUS.JOB.TITLE
        R.NEW<EB.CUS.GENDER> = FN.CUSTOMER<GENDER> ; *EB.CUS.GENDER
        R.NEW<EB.CUS.PHONE.1> = FN.CUSTOMER<PHONE.1> ; *EB.CUS.PHONE.1
        R.NEW<EB.CUS.EMAIL.1> = FN.CUSTOMER<DATE.OF.BIRTH> ; *EB.CUS.EMAIL.1
        R.NEW<EB.CUS.TAX.ID> = FN.CUSTOMER<LEGAL.ID>   ; *EB.CUS.TAX.ID
   
    WRITE R.NEW ON CUSTOMER_DETAILS_FILE, "" ELSE ABORT 202, CUSTOMER_DETAILS_FILE file has been updated successfully."
    REPEAT 
    
    
    CLOSE CUSTOMER_FILE
    CLOSE CUSTOMER_DETAILS_FILE


   CRT "Selected fields copied successfully from SourceTable to DestinationTable."
   
END

