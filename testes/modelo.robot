*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Abrir site
    Open Browser    https://robotframework.org/    chrome
    Close Browser

*** Test Cases ***
Cenario 01: Acessando o site Robot 
    Abrir site
    