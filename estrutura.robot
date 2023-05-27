*** Settings ***
# CONFIGURAÇÕES(Importar Recursos, Definir Tear_Down, Importar bibliotecas, Definir Setup)
Library    SeleniumLibrary

*** Variables ***
# Declarar variaveis
${Variavel01}    teste0
${Variavel02}    teste1
${Variavel03}    teste2
${Variavel04}    teste3

*** Keywords ***

    

*** Test Cases ***
Cenario 01: Abri site 
    Open Browser    https://www.google.com/    chrome
    Close Browser

Cenario 02: Abrir site Alura
    Open Browser    https://www.alura.com.br/    chrome
    Close Browser

Cenario 03: Abrir site You Tube
    Open Browser    https://www.youtube.com/    chrome
    Close Browser
