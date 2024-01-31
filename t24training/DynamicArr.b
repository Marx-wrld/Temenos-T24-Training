PROGRAM DynamicArr

    *Dynamic Arrays
    name = "Anne Smith"
    company = 'Marx.io'
    address = \23, avenue de l'arme\

    *Getting length of characters with inbuilt functions
    CRT "Address is of ": LEN(address): " Characters"
    CRT "My first name is ": LEFT(name, 4)
    CRT "My last name is ": RIGHT(name, 8)

    age = 24
    salary = 4560.90

    CRT "I earn EUR ": salary: " at the age of ": age + 1
    
    employee = name:@FM:address:@FM:35:@FM:"Marx.io":@VM:5428.43:@FM:"ABC Corp":@VM:324.45
    CRT @(-1)
    PRINT FMT (employee, 'MCP')

    CRT "Address: ": employee<2>
    CRT "Company: ": employee<4,1>
    CRT "Salary: EUR": employee<4,2>
    CRT "Company2: ": employee<5,1>
    CRT "Salary2: EUR ": employee<5,2>


    *String to array conversion
    loan_request = '001*Anne*EUR*348900*240*0.031'
    CONVERT '*' TO @FM IN loan_request
    CRT FMT (loan_request, 'MCP')

    req_id  = loan_request<1>
    cust_name = loan_request<2>
    curr = loan_request<3>
    amount = loan_request<4>
    terms = loan_request<5>
    int_rate = loan_request<6>

    PRINT cust_name: " requested ": curr: " ": amount: " on ": int_rate*100:"%": " for ": terms / 12: " years."

END
