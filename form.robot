*** Settings ***
# CONFIGURAÇÕES(Importar Recursos, Definir Tear_Down, Importar bibliotecas, Definir Setup)

Library    SeleniumLibrary

*** Variables ***
# Declarar variaveis
${input_name}          id:name
${input_phone}         id:phone
${input_email}         id:email
${input_password}      id:password
${text_addres}         id:address
${button_submit}       name:submit
${input_type}          id:male
${input_contains}      //input[@type='checkbox'][1]
${select_contains}     //select[contains(@class,'custom-select')]
${option_value}        //option[@value='1']        
${check_box}           //label[@class='custom-control-label'][contains(.,'2 years')]
${radio_button}        //label[@class='custom-control-label'][contains(.,'Selenium Webdriver')]

*** Keywords ***
//option[@value='1']

*** Test Cases ***
Cenario 01: Abrir site 
    Open Browser    https://itera-qa.azurewebsites.net/home/automation    chrome

Cenario 02: Preencher formulario
    
    Input Text      ${input_name}         Vitor
    Input Text      ${input_phone}        text=(11) 98680-3400
    Input Text      ${input_email}        text=vitor.devichu@hotmail.chrome
    Input Text      ${input_password}     text=FFFHHHIII
    Input Text      ${text_addres}        text=Rua Tal numero tal

Cenario 03: Clicar em submit
    Click Element   ${button_submit}
      Sleep    5 

Cenario 04: Clicar em check-box
    Click Element    ${input_type}

Cenario 05: Clicar em contains  
    Click Element    ${input_contains}  

Cenario 06: Clicar em contains
    Click Element    ${select_contains}  

Cenario 07: Clicar 
    Click Element    ${option_value} 

# Cenario 00: Fechar navegador
#   Close Browser 

Cenario 08: Clicar no checkbox e radiobutton
    Click Element    ${check_box}
    Click Element    ${radio_button}
    
  


