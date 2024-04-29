*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                      https://front.serverest.dev/login
${cadastreseLink}           //a[@data-testid='cadastrar'][contains(.,'Cadastre-se')]
${nomeInput}                //input[contains(@name,'nome')]
${emailInput}               //input[contains(@name,'email')]
${senhadInput}              //input[contains(@name,'password')]
${administradorCheckbox}    //input[contains(@name,'administrador')]
${cadastrarButton}          //button[@data-testid='cadastrar'][contains(.,'Cadastrar')]
${cadastrar usuário}        //a[@data-testid='cadastrarUsuarios'][contains(.,'Cadastrar')]

*** Keywords ***
 Abrir o navegador
    Open Browser  browser=headlesschrome
    Maximize Browser Window
Fechar o navegador 
    Close Browser
Passo 1 - acessar a página de login ServeRst
    Go To    url=${URL}

Passo 2 - Clicar em cadastre-se
    Wait Until Element Is Visible    locator=${cadastreseLink} 
    Click Element                    locator=${cadastreseLink} 

Passo 3 - Digitar um nome
    Wait Until Element Is Visible    locator=${nomeInput}
    Input Text                       locator=${nomeInput}           text=Testenildo dos Santos
    Sleep    3s 

Passo 4 - Digitar e-mail
    Wait Until Element Is Visible        locator=${emailInput}
    Input Text                           locator=${emailInput}      text=testerenildodasanros@qa.coders.com.br
    Sleep    3s 

Passo 5 - Digitar uma senha
     Wait Until Element Is Visible        locator=${senhadInput}  
    Input Password                        locator=${senhadInput}      password=TestesrnildoQaCoders@10
    Sleep    3s 
    
Passo 6 - Escolher perfil de usuário de administrador
    Wait Until Element Is Visible        locator=${administradorCheckbox}  
    Select Checkbox                      locator=${administradorCheckbox}  
    Sleep   3s
    
Passo 7 - Clicar em cadastrar
    Wait Until Element Is Visible        locator=${cadastrarButton}   
    Click Button                         locator=${cadastrarButton}    
    Sleep   5s

# Passo 8 - Clicar em cadastrar usuário
#     Wait Until Element Is Visible        locator=${cadastrar usuário}   
#     Click Button                         locator=${cadastrar usuário}  
#     Sleep   5s    

