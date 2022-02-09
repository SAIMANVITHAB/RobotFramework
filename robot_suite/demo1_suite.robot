*** Settings ***
Library  DateTime

*** Test Cases ***

TC5 AreaOf Circle
        Set Local Variable    ${radius}       5
        ${res}  Evaluate    3.14*${radius}*${radius}
        Log To Console    ${res}
        
        
TC6
        Set Local Variable    ${browser}        chrome
        IF    '${browser}' =='chrome'
                Log To Console    Yeah it is chrome
        ELSE
             Log To Console       No it is not chrome
        END

TC7
       FOR    ${i}    IN  RANGE  1    11  1
           Log To Console    ${i}

       END


TC8
        Log To Console    ${EXECDIR}
        Log To Console    ${CURDIR}
        Log To Console    ${EXECDIR}/driver/geckodriver


        
            