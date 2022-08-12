***Settings***
Resource        ../resource/po/consulta_shopqa.robot
Resource        ../resource/resource.robot


Suite Setup     Dado que o browser esteja aberto
Suite Teardown      Fechar Navegador


**Test Cases***

Cenário 1 – Apresentar a opção de Consulta

   Dado que estou na tela principal do site
   Quando clico na opção de Search
   Então é apresentado a opção para digitar o produto a ser consultado


Cenário 2 – Efetuar Consulta

    Quando digito a texto Dress
    Então após dar Enter é apresentado os resultados de buscas