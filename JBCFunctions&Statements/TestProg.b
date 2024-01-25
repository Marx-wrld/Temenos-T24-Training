PROGRAM TEST

*Program to change the delimiter '.' in phone to '-'

    phone = "354.458.656.778"

    CRT "---BEFORE---"
    CRT "Phone : " : phone

*Function - used when you want to save the original value 
    CRT "---FUNCTION---"
    phone1 = CHANGE(phone, ",", "-")
    CRT "Phone : " : phone
    CRT "Phone1 : " : phone1

*Statement - used when we want to permanently change the original value
    CRT "---STATEMENT---"
    CHANGE "." TO "-" IN phone 
    CRT "Phone : " : phone

END 