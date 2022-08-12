*** Settings  ***
Resource        ../resource/resource.robot
Resource        ../resource/po/home.robot

Suite Teardown      Fechar Navegador
*** Test Cases ***

Cenário 1 - Abrir Google

    Dado que o browser esteja aberto
    Quando acesso a página do Google
    Então confirmo que a página do Google está aberta


Cenário 2 - Realizar Consulta Padrinho

    Dado que estou na página do Google
    Quando consulto a palavra Padrinho
    Então deve apresentar os resultados referentes a palavra Padrinho



    

