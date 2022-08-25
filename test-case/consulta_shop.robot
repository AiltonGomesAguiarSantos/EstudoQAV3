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
    Dado que apresentou a opção para digitar o produto a ser consultado
    Quando digito a texto "Dress"
    Então após dar Enter é apresentado os resultados de buscas


Cenário 3 - Efetuar Consulta de único Resultado
 
   Dado que apresentou a opção para digitar o produto a ser consultado
   Quando digito a texto "T-Shirt"
   Então após dar Enter é apresentado um único resultado em evidência
   E após dar Enter é apresentado um único resultado e abaixo as opções de produtos relacionados

Cenário 5 – Efetuar Consulta de produto inexistente

   Dado que apresentou a opção para digitar o produto a ser consultado
   Quando digito a texto "Camisa"
   Então após dar Enter é apresentado a mensagem de que não foi encontrado produto