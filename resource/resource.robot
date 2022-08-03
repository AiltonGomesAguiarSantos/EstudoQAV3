*** Settings ***
Library     SeleniumLibrary


*** Variables ***



*** Keywords ***

Dado que o browser esteja aberto
        Open browser    url:blank   googlechrome
        
Fechar Navegador
      Close Browser
