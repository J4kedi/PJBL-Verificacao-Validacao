*** Settings ***
Library               Selenium2Library

*** Variables ***
${BROWSER}            chrome
${URL}                http://localhost/pitissaria/paginas/index.php

*** Keywords ***
Abrir o navegador
    Open Browser     browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site pitissaria
    Go To            url=${URL}

Acessar a pagina "${url}"
    Go To            url=${url}

Realizar login gerente "${NOME}", ${SENHA}
    

Verificar se o título da página fica "${TITULO}"
    Title Should Be  title=${TITULO}
    
Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text       locator=twotabsearchtextbox  text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3]