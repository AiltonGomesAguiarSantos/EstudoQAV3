***Settings***
Resource        ../resource/po/shop_logar.robot
Resource        ../resource/resource.robot


Suite Setup     Dado que o browser esteja aberto
Suite Teardown      Fechar Navegador


**Test Cases***

Cenário 1 - Acessar a área logada utilizando usuário

    Dado que tenho uma tela para acessar a area logavel
    Quando Insiro os dados de usuário e senha
    Então é apresentado a página inicial após o acesso.


Cenário 2 - Acessar a area logada utilizando e-mail

    Dado que tenho uma tela para acessar a area logavel
    Quando Insiro os dados de e-mail e senha
    Então é apresentado a página inicial após o acesso.


Cenário 3 - Negar acesso para usuário que não esteja criado
    Dado que estou na tela para logar
    Quando Insiro os dados de usuário invalido e senha
    Então é apresentado a informação que a usuário não existe


Cenário 4 - Negar acesso para e-mail que não esteja criado
    Dado que estou na tela para logar
    Quando Insiro os dados de e-mail invalido e senha
    Então é apresentado a informação que a usuário não existe


Cenário 5 - Negar acesso para senha que tenha apenas 3 caracteres
    Dado que estou na tela para logar
    Quando Insiro os dados de usuário e senha 123
    Então é apresentado a informação que a usuário não existe


########################### ATUALIZADO #######################################