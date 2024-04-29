*** Settings ***
Resource    ../resources/testes_recursos_serverest.resource
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador 

*** Test Cases ***
Cenário de teste: Cadastro de usuário administrador
     Passo 1 - acessar a página de login ServeRst 
     Passo 2 - Clicar em cadastre-se
     Passo 3 - Digitar um nome
     Passo 4 - Digitar e-mail
     Passo 5 - Digitar uma senha
     Passo 6 - Escolher perfil de usuário de administrador
     Passo 7 - Clicar em cadastrar
     Passo 8 - Clicar em cadastrar usuário








