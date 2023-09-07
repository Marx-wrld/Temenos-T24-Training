PROGRAM VS.ProcessAcctList

    PROMPT "Enter the name of the list: "
    INPUT list_name

    IF NOT(list_name) THEN STOP

    READLIST acc_list FROM list_name ELSE
        CRT 'List with name ' : list_name : ' does not exist!'
        STOP
    END


    account_list = '[ '
    LOOP
    WHILE READNEXT rec FROM acc_list DO
        company_code = rec[1, 9]
        acct_id = rec[11, 99]

        CALL VS.GetAcctDetails(acct_id, details)
        account_list<-1> = details : ','
        CRT rec
    REPEAT

    account_list[1] = ' ]'

    CRT account_list

END