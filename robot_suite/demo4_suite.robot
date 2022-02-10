*** Settings ***
Library    Collections
*** Test Cases ***
TC1
    Set Global Variable    ${firstname}   manvi
    ${lastname}     Set Variable    manvitha
    Log To Console    ${firstname} ${lastname}

    @{fruits}   Create List     apple   banana  lemon
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]

    FOR    ${color}    IN    @{fruits}
        Log To Console    ${color}

    END

    Log List    ${fruits}



TC2
    Log To Console    ${firstname}
    ${dic}  Create Dictionary   firstname=manvi     lastname=manvitha   mobile=7893756515
    Log To Console    ${dic}[lastname]