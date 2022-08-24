***Settings***
Resource        ../resource/po/validacao_itens_shopqa.robot
Resource        ../resource/resource.robot


Suite Setup     Dado que o browser esteja aberto
Suite Teardown      Fechar Navegador


**Test Cases***

Cenário 1 - Confirmar se o produto é apresentado 

    Dado que realizei a consulta de “Dress” no campo de pesquisa E apresentou produtos a serem escolhidos
 
    Quando seleciono o produto

    Então é apresentado as informações do produto

Cenário 3 - Escolhendo o tipo de tamanho do produto

    Quando clico na opção de tamanho

    Então é apresentado as opções de escolha de tamanho


Cenário 2 - Escolhendo o tipo de cor do produto

    Quando clico na opção de cor

    Então é apresentado as opções de escolha de cor E quando seleciono a cor é apresentado a foto com a cor escolhida

    