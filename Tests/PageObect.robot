*** Settings ***
Library    SeleniumLibrary
Library    SeleniumScreenshots      output_directory = ${OUTPUT_DIR}         
Library    OperatingSystem
Resource    ../Ressources/Keywords/commun.robot
Resource    ../Ressources/Keywords/annonce.robot
Resource    ../Ressources/Keywords/inscription.robot
Resource    ../Ressources/Keywords/authentification.robot

*** Test Cases ***
Authentificationok
    [Documentation]    login avec mail existant
    [Tags]    AOK
    openpage
    loginok
    Close Browser
Authentification KO MAIL ET PASS NON VALIDE
    [Documentation]      LOGIN MAIL  NON EXISTANT
    [Tags]    AUT
    openpage
    loginko
    Close Browser
Authentification KO MAIL VALIDE ET PASS NON VALIDE
    [Documentation]    LOGIN MAIL VALIDE ET PASSWORD NON VALIDE
    [Tags]    AUT 
    openpage
    loginkopassnv
    Close Browser
Deconnexion
    [Documentation]      Deconnexion du site
    [Tags]    AUT
    openpage
    loginok
    Logout
    Close Browser
Inscrire un nouveau client
    [Documentation]    incription d'un nouveau client
    [Tags]        INC
    openpage
    Register 
    Close Browser
Déposeé une annonce
    [Documentation]    déposée une nouvelle annonce
    [Tags]        DNA
    openpage
    Depot-Annonce
    Close Browser
 