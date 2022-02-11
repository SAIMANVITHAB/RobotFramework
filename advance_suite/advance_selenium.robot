*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser       browser=firefox         executable_path=${EXECDIR}/driver/geckodriver
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=http://google.com/
     ${linkcount}   Get Element Count      tag=a
     Log To Console    ${linkcount}

     @{element}     Get WebElement    tag=a

     ${text}    Get Text    ${element}[0]
     Log To Console    ${text}