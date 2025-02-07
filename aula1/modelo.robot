*** Settings ***
# Relação com as configurações, 
# importação de libs
# outros arquivos
# Definição do setup - antes de cada teste
# Definição do teardown - depois de cada teste
Library     SeleniumLibrary

*** Variables ***
# Definição de variáveis - valores que podem ser alterados
${URL}    https://robotframework.org/
${URL2}    https://www.google.com/    
${BROWSER}    chrome
${DELAY}    2s


*** Keywords ***
# Definição de palavras-chave - reutilização de código
Abrir Site
    Open Browser    https://robotframework.org/    chrome

Abrir site com variaveis
    Open Browser    ${URL2}    ${BROWSER}

Fechar Browser
    Close Browser

*** Test Cases ***
# Definição de casos de teste - cenários de teste
Cenário 1: Acessando o site do Robot
    abrir site
    Close Browser

Cenário 2: Acessando o site Goggle
    Abrir site com variaveis
    Fechar Browser
