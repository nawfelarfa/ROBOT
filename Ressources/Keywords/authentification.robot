*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

Resource    commun.robot

*** Keywords ***
loginok
    Click Element    ${compte}
    Click Element    ${login}
    Input Text    ${logmail}        ${mailv}
    Click Element     ${entrer}
    Wait Until Element Is Visible    ${password}
    Input Password      ${password}    ${passwordv}
    Click Element    ${entrer}
    Wait Until Page Contains         Bonjour
    Title Should Be      Mon compte - ParuVendu.fr

loginko
    Click Element    ${compte}
    Click Element    ${login}
    Input Text    ${logmail}        ${mailnv}
    Click Element     ${entrer}
    Page Should Contain Element      ${entrer}

loginkopassnv
    Click Element    ${compte}
    Click Element    ${login}
    Input Text    ${logmail}        ${mailv}
    Click Element     ${entrer}
    Wait Until Element Is Visible    ${password}
    Input Password    ${password}        ${passwordnv}
    Click Element    ${entrer}
    Page Should Contain Element          ${entrer}
Logout   
    Execute JavaScript    document.evaluate("//*[text()='Me déconnecter']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()

   
        