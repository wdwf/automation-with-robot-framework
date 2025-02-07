*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://automationexercise.com/
${BROWSER}    chrome
${DELAY}    5s
${LOGIN_LINK}    //a[@href="/login"]
${INPUT_NAME}    name:name
${INPUT_EMAIL}    //input[@data-qa="signup-email"]
${BUTTON_CONTINUE}    //input[@data-qa="continue-button"]
${INPUT_PASSWORD}    name:password
${INPUT_DAY}    id:days
${INPUT_MONTH}    id:months
${INPUT_YEAR}    id:years
${CHECKBOX_NEWSLETTER}    id:newsletter
${CHECKBOX_OPTION}    id:optin
${FIRT_NAME}    name:first_name
${LAST_NAME}    name:last_name
${COMPANY}    name:company
${ADDRESS}    name:address1
${COUNTRY}    name:country
${STATE}    name:state
${CITY}    name:city
${ZIPCODE}    name:zipcode
${MOBILE_NUMBER}    name:mobile_number


*** Keywords ***
abrir navegador
    Open Browser    ${URL}    ${BROWSER}

verificar se a pagina carregou
    Wait Until Page Contains Element    ${LOGIN_LINK}    timeout=${DELAY}

clicar no botão de 'Signup / Login'
    Click Element    ${LOGIN_LINK}

verificar se 'New User Signup!' está visivel
    Wait Until Page Contains    New User Signup!    timeout=${DELAY}

preencher nome e endereco de email
    Input Text    ${INPUT_NAME}    bob123
    Input Text    ${INPUT_EMAIL}    bob123@email.com
    # Sleep    2s   # Evite isso se puder!

clicar em 'Signup'
    Click Button    Signup

verificar se 'ENTER ACCOUNT INFORMATION' está visivel
    Wait Until Page Contains    Enter Account Information

preencher campos: Title, Name, Email, Password, Date of birth
    Select Radio Button    title    Mr
    Input Text    ${INPUT_PASSWORD}    741a.#123
    Select From List By Value    ${INPUT_DAY}    15
    Select From List By Value    ${INPUT_MONTH}    5
    Select From List By Value    ${INPUT_YEAR}    1990

selecionar checkbox 'Sign up for our newsletter!'
    Select Checkbox   ${CHECKBOX_NEWSLETTER} 

selecionar checkbox 'Receive special offers from our partners!'
    Select Checkbox   ${CHECKBOX_OPTION}

preencher campos: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Input Text    ${FIRT_NAME}    Bob
    Input Text    ${LAST_NAME}    Silva
    Input Text    ${COMPANY}    Teste
    Input Text    ${ADDRESS}    Rua Teste
    Select From List By Value    ${COUNTRY}    United States
    Input Text    ${STATE}    New York
    Input Text    ${CITY}    Teste
    Input Text    ${ZIPCODE}    12345
    Input Text    ${MOBILE_NUMBER}    123456789

clicar em 'Create Account'
    Click Button    Create Account

verifique se a mensagem 'ACCOUNT CREATED!' está visivel
    Wait Until Page Contains    Account Created!

clique em 'Continue'
    Click Element    Continue

verifique se 'Logged in as username' está visivel
    Wait Until Page Contains    Logged in as bob123

Clique em 'Delete Account'
    Click Element    Delete Account

verifique se 'ACCOUNT DELETED!' está visivel e clique em 'Continue'
    Wait Until Page Contains    Account Deleted!
    Click Element    Continue

fecha navegador
    Close Browser
    
*** Test Cases ***
Cenário 1: Preencher formulario
    abrir navegador
    verificar se a pagina carregou
    clicar no botão de 'Signup / Login'
    verificar se 'New User Signup!' está visivel
    preencher nome e endereco de email
    clicar em 'Signup'
    verificar se 'ENTER ACCOUNT INFORMATION' está visivel
    preencher campos: Title, Name, Email, Password, Date of birth
    selecionar checkbox 'Sign up for our newsletter!'
    selecionar checkbox 'Receive special offers from our partners!'
    preencher campos: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    clicar em 'Create Account'
    verifique se a mensagem 'ACCOUNT CREATED!' está visivel
    clique em 'Continue'
    verifique se 'Logged in as username' está visivel
    Clique em 'Delete Account'
    verifique se 'ACCOUNT DELETED!' está visivel e clique em 'Continue'
    fecha navegador