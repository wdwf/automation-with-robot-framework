# automation-with-robot-framework

![image](https://github.com/user-attachments/assets/8b561a4d-7c16-4471-9bec-6cf770b7a55d)

## 💻 Descrição do Projeto
Projeto de estudo para visualizar o funcionamento da ferramenta robot framework.

## 🧶 Visão Geral
Este projeto de estudo teve como objetivo explorar e demonstrar o uso do Robot Framework para automação de testes de inscrição em uma plataforma online. O script desenvolvido simula o processo de inscrição de um usuário, desde o acesso à página inicial até a confirmação da inscrição, abrangendo os principais passos e elementos envolvidos. O projeto foi estruturado para apresentar de forma clara e didática os conceitos básicos do Robot Framework, como a criação de keywords, a utilização de bibliotecas e a execução de testes.

## ROBOT
Ele é uma ferramenta de automação de testes que usa uma sintaxe fácil de entender (quase linguagem natural). Ele permite testar aplicações web, APIs, banco de dados e muito mais, com integração a bibliotecas como Selenium (para testes web).

### programas relacionados
- cypress
- selenium

### Sobre
- extensível e baseado em Python
- <span style="font-weight:bold; color:rgb(255, 0, 0)">orientado a palavras-chave</span> (keyword-drive)
	- Frases proximas a linguagem natural
- para testes de aceitação (ATDD)
- desenvolvimento orientado a comportamento (BDD)
- automação de processos robóticos (RPA)

## 🎒 Instalação
- [Instalar Python](https://www.python.org/)
- [VSCode](https://code.visualstudio.com/)
  - `python.exe -m pip install --upgrade pip`
  
- [Instalar o Robot Framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#getting-started)
  - Se for necessário a utilização de alguma biblioteca como secure, apion, selenium devemos instalar via pip:
  - `pip install robotframework-seleniumlibrary`
  
- Adicionar drives do navegador
  - ChromeDriver:  é um executável que permite controlar o navegador Google Chrome através do Selenium WebDriver
  - Ele é usado para executar testes no Chrome e em aplicativos baseados na WebView.
  - O ChromeDriver pode ser usado para: Executar testes no navegador Chrome, Executar testes em aplicativos baseados na WebView, Navegar pela web de forma programática, Coletar dados, Automatizar relatórios web
    

#### Passos para adicionar o drive
- Baixe o chromedriver referente a sua versão do navegador chrome.
- localize nas variaveis de sistema (Path) onde os scripts do python estam localizados e adicione o executavel do chromedriver nessa pasta.

### Nota:
- Adicione o plugin no vscode do robot para ajudar na visualização
- Para rodar o projeto é só entrar na pasta e executar `robot form.robot`
