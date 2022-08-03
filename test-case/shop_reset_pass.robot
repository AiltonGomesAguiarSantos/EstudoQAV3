***Settings***
Resource        ../resource/po/shop_resetpassword.robot
Resource        ../resource/resource.robot


Suite Setup     Dado que o browser esteja aberto
Suite Teardown      Fechar Navegador


**Test Cases***

Cenário 1 - Reset de Senha por usuário

    Dado que estou na tela de acesso 
    e escolho a opção de Lost your password? 
    e insiro a informação de usuário
    Quando clico em reset password
    Então é apresentado a mensagem de que o reset foi realizado e enviado e-mail


Cenário 2 - Reset de Senha por e-mail
    Dado que estou na tela de acesso 
    e escolho a opção de Lost your password? 
    e insiro a informação de e-mail
    Quando clico em reset password
    Então é apresentado a mensagem de que o reset foi realizado e enviado e-mail

