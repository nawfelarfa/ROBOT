*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Telnet
Variables    ../Locators/locator.py
Variables    ../JDD/data.py
Resource    commun.robot

*** Keywords ***
Register
    Wait Until Element Is Visible    ${compte}
    Click Element    ${compte}
    Page Should Contain    Rejoignez une communauté de confiance    
    Wait Until Element Is Visible    ${sinscrire}
    Click Element    ${sinscrire}
    Wait Until Element Is Visible     ${mail}     
    Input Text      ${mail}      ${email}
    Wait Until Element Is Visible     ${prenom}    
    Input Text    ${prenom}                  ${pren}
    Wait Until Element Is Visible     ${nom}    
    Input Text    ${nom}     ${monom}
    Wait Until Element Is Visible     ${ville} 
    Input Text      ${ville}       ${villee}
    #Wait Until Element Is Visible     ${connecter}     timeout=20
    #Click Button    ${connecter}
    Execute JavaScript    document.getElementById('btnSubmitCreaCompte').click();
    Wait Until Page Contains    Bonjour     timeout=20
    Page Should Contain    Bonjour 
    

 

    
