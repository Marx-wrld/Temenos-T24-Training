PROGRAM intro

    *Dynamic Arrays
    name = "Anne Smith"
    company = 'Marx.io'
    address = \23, avenue de l'arme\
    
    *String concatenation
    CRT "My name is ": name : " I work for ": company
    CRT "live on ": address

    *String slicing
    house_no = address[1,2]
    street = address[5,2]

    CRT street
    CRT house_no

    *Clears previous output
    CRT @(-1)
    name[5] = 'Kamatali'
    CRT name

END