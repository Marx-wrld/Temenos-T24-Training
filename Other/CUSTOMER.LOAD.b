----------------------------------------------------------------------------
* <Rating>838</Rating>
*-----------------------------------------------------------------------------
    SUBROUTINE CUSTOMER.LOAD

PROGRAM SELECT_AND_LOAD
    FILEPATH = "CUSTOMER_DETAILS"   ;* Path to the file containing customer details
    OPEN F.CUSTOMER TO CUSTOMER_FILE ELSE ABORT 201, "CUSTOMER_FILE is opened."
    
    .SELECT CUSTOMER_FILE    ;* Start a select operation on the file
    .LOAD CUSTOMER_FILE      ;* Load all selected records into memory

    ;* Loop through each record in memory and process it
    RECORD_COUNT = 0
    REPEAT
        NEXTRECORD CUSTOMER_DETAILS_FILE, CUSTOMER_RECORD
        IF STATUS() THEN EXIT   ;* Exit loop if no more records
        RECORD_COUNT += 1
        PRINT "Record " : RECORD_COUNT : ": " : CUSTOMER_RECORD<1> : ", " : CUSTOMER_RECORD<2> : ", " : CUSTOMER_RECORD<3>
        ;* Process the fields of the record as needed
    UNTIL RECORD_COUNT = FILESTAT(CUSTOMER_FILE, 9)   ;* Loop until all records are processed

    .SELECT CUSTOMER_FILE    ;* End the select operation

    CLOSE CUSTOMER_FILE

  RETURN TO PROGRAM CUSTOMER.DETAILS
  
END