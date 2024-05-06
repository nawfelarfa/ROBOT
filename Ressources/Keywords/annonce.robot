*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    XML
Variables    ../Locators/locator.py
*** Variables ***
${Image Path}            C:\\paravendue\\Ressources\\JDD\\voiture.jpg
*** Keywords ***
Depot-Annonce
    
    Execute JavaScript    document.querySelector("a[title='Déposez vos annonces gratuites']").click()
    Wait Until Element Is Visible    ${categ}    timeout=20
    Click Element   ${categ}  
    Wait Until Element Is Visible    //*[@id="chaines"]/li[1]
    Click Element    //*[@id="chaines"]/li[1]
    Click Element    //*[@id="V"]/ul/li[1]
    Select From List By Index    //*[@id="choixFamille"]    0
    Select Radio Button    company_ad    0
    Select Radio Button     radTypeSaisie     manuelle
    Select From List By Index    typeVehicule     1
    Select From List By Index    marque    6
    FOR    ${index}    IN RANGE    10    # Nombre maximum d'essais pour trouver l'élément
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);    # Faire défiler vers le bas de la page
        Sleep    1s    # Attendre un peu pour que la page se charge
        ${element_present} =    Execute JavaScript    var element = document.getElementById('modele'); if (element) {true;} else {false;}    # Vérifier si l'élément est présent
        Exit For Loop If    ${element_present}    # Sortir de la boucle si l'élément est trouvé7
    END
    Select From List By Index    modele    2
    Select From List By Index    mois      1
    Select From List By Value     id=annee      annee_2022 
    FOR    ${index}    IN RANGE    10    # Nombre maximum d'essais pour trouver l'élément
        Execute JavaScript    window.scrollTo(0, document.body.scrollHeight);    # Faire défiler vers le bas de la page
        Sleep    1s    # Attendre un peu pour que la page se charge
        ${element_present} =    Execute JavaScript    var element = document.getElementById('type'); if (element) {true;} else {false;}    # Vérifier si l'élément est présent
        Exit For Loop If    ${element_present}    # Sortir de la boucle si l'élément est trouvé7
    END
    Select From List By Index    type      2
    Select From List By Index    energie     1
    Select From List By Index    typeTransmission    1
    Select From List By Index    nombrePortes     1
    Select From List By Index    version     1
    Input Text    id="kilometrage-error"      210
    Input Text    id="enrichi-7800001_140"     5
    Input Text    id="enrichi-7800001_150"     3
    Input Text    id="enrichi-7800001_160"     60
    Input Text    id="enrichi-7800001_170"     5l/100
    Select From List By Index    enrichi-7800001_190    1
    Select Checkbox    id="enrichi-7800001_60_1"
    Select From List By Index    nbrSemainesPublication     1
    Input Text    id="prix"    500 euro
    Select Checkbox    id="flagPrixNegociable"
    Select Checkbox    id="optinTel"
    Select From List By Index     codePays    0
    Wait Until Element Is Visible    //*[@id="imgUpload-dropdiv"]/div
    Click Element    xpath='//*[@id="imgUpload-dropdiv"]/div'
    Wait Until Element Is Visible     //a[href="javascript:$.fancybox.close();"]
    Click Element     //a[href="javascript:$.fancybox.close();"]
    Execute JavaScript    document.querySelector("a[id='suivant1']").click()


