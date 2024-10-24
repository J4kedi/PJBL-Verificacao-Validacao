*** Settings ***
Documentation          Essa suíte testa o site da Pitissaria
Resource               pitissaria_resources.resource
Test Setup             Abrir o navegador
Test Teardown          Fechar o navegador

*** Test Cases ***
Caso de Teste 01 - Cadastro de produto sem nome
    [Documentation]    Esse teste verifica o cadastro de produto sem nome
    [Tags]             cadastro_produto
    Acessar a home page do site pitissaria
    Verificar se o título da página fica "Pitissaria"

Caso de Teste 02 - Cadastro de produto sem preço
    [Documentation]     Esse teste verifica a busca de um produto
    [Tags]              busca_produtos lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "playstation 5" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console PlayStation 5"

Caso de Teste 03 - Cadastro de Usuário sem endereço 

Caso de Teste 04 - Cadastro de Ingredientes com valores negativos

Caso de Teste 05 - Cadastro de Usuário com mesmo email
