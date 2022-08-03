***Settings***
Resource        ../resource/po/shop_myaccount.robot
Resource        ../resource/resource.robot


Suite Setup     Dado que o browser esteja aberto
Suite Teardown      Fechar Navegador


**Test Cases***

Cenário 1 - Criar um novo Usuário

    Dado que tenho uma tela para criar acesso
    Quando Insiro os dados de usuário, senha e e-mail
    Então é criado o usuário

Cenário 4 - Criar usuário com senha que não atende ao requisitos
        Dado que estou na tela para criar registro de usuário
        Quando Insiro os dados de usuário, e-mail e senha 123
        Então é apresentado a informação que a senha não atende aos requisitos