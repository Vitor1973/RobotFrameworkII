*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Dados do Teste
${NomeDaMusica}    Ariana Grande Positions

#Variaveis de configuracao
${URL}         https://www.youtube.com/ 
${Browser}     chrome

#Elementos
${Input_Pesquisa}     //input[@id="search"] 
${Button_Pesquisa}    //button[@id="search-icon-legacy"]
${Class_Primeiro}     (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
# ${Prova}              (//*[@id="top-level-buttons-computed"]/ytd-button-renderer/yt-button-shape/button)[1]
${Prova}            (//*[@id="top-level-buttons-computed"]/ytd-button-renderer)[1]

*** Keywords ***
Dado que acesso o site do you Tube
    
    Open Browser      ${URL}    ${Browser}

 Quando digito o nome da musica
     Input Text    ${Input_Pesquisa}    ${NomeDaMusica}
         
 E clico no botao buscar
     Click Element    ${Button_Pesquisa} 

E clico na primeira opcao da lista
      Wait Until Element Is Visible    ${Class_Primeiro}    5
      Click Element    ${Class_Primeiro} 
    
Então o video e executado
     Wait Until Element Is Visible    ${Prova}    5
     Element Should Be Visible    ${Prova} 
     Sleep  1s
     Close Browser


*** Test Cases ***
Cenario 01: Executar video no site do you Tube
    [Tags]   regressivo
    Dado que acesso o site do you Tube
    Quando digito o nome da musica
    E clico no botao buscar
    E clico na primeira opcao da lista
    Então o video e executado

