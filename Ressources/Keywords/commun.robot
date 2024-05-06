*** Settings ***
Library    SeleniumLibrary    
Library    OperatingSystem
Variables   ../JDD/data.py
Variables    ../Locators/locator.py
*** Variables ***
${url}     https://www.paruvendu.fr/
${browser}     Chrome 
*** Keywords ***
openpage
    Open Browser    ${url}    ${browser}
    Maximize Browser Window  
    Wait Until Element Is Visible    ${accepter}
    Click Element    ${accepter}  

    

