***Settings***
Library     SeleniumLibrary
Library    FakerLibrary

***Variables****
${HOME_INPUT_USUARIO}       //*[@id="username"]
${HOME_INPUT_SENHA}         //*[@id="password"]
${HOME_RESULT_PESQUISA}     //*[@class="post post-page current-item"]
${HOME_RESULT_ERROR}        //*[@class="woocommerce-error"]

***Keywords***

Dado que tenho uma tela para acessar a area logavel
     Go to       https://shop.demoqa.com/my-account/
     Title Should Be  My Account – ToolsQA Demo Site

Quando Insiro os dados de usuário e senha
        Input Text      ${HOME_INPUT_USUARIO}         ailtondac
        Input Text      ${HOME_INPUT_SENHA}           @iltonDac31
        Press Keys      none                          RETURN
###        Wait Until Element Is Visible       ${HOME_MESSAGE_SENHA} 
###        Element Should Contain      ${HOME_MESSAGE_SENHA}               Strong  

Então é apresentado a página inicial após o acesso.

    Element Text Should Be            ${HOME_RESULT_PESQUISA}                 My Account  



Quando Insiro os dados de e-mail e senha
        Input Text      ${HOME_INPUT_USUARIO}         ailtondac@teste.com
        Input Text      ${HOME_INPUT_SENHA}           @iltonDac31
        Press Keys      none                          RETURN




Dado que estou na tela para logar
        Go to       https://shop.demoqa.com/my-account/
        Title Should Be  My Account – ToolsQA Demo Site


Quando Insiro os dados de usuário invalido e senha
        Input Text      ${HOME_INPUT_USUARIO}         teste190354785
        Input Text      ${HOME_INPUT_SENHA}           @iltonDac31
        Press Keys      none                          RETURN


Então é apresentado a informação que a usuário não existe
    Element Should Be Visible           ${HOME_RESULT_ERROR}                 ERROR
    Capture Page Screenshot


Quando Insiro os dados de e-mail invalido e senha
        Input Text      ${HOME_INPUT_USUARIO}         teste@g
        Input Text      ${HOME_INPUT_SENHA}           @iltonDac31
        Press Keys      none                          RETURN       


Quando Insiro os dados de usuário e senha 123
        Input Text      ${HOME_INPUT_USUARIO}         teste1903
        Input Text      ${HOME_INPUT_SENHA}           123
        Press Keys      none                          RETURN 

########################### ATUALIZADO #######################################