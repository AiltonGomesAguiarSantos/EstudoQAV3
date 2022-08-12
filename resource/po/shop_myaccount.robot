***Settings***
Library     SeleniumLibrary
Library    FakerLibrary

***Variables****
${HOME_INPUT_USUARIO}       //*[@id="reg_username"]
${HOME_INPUT_EMAIL}         //*[@id="reg_email"]
${HOME_INPUT_SENHA}         //*[@id="reg_password"]
${HOME_MESSAGE_SENHA}       //*[@class="woocommerce-password-strength strong"]
${HOME_MESSAGE_SENHA_ERRADA}            //*[@class="woocommerce-password-strength short"]

***Keywords***

Dado que tenho uma tela para criar acesso
     Go to       https://shop.demoqa.com/my-account/
     Title Should Be  My Account – ToolsQA Demo Site

Quando Insiro os dados de usuário, senha e e-mail
        ${nome}         First Name
        Input Text      ${HOME_INPUT_USUARIO}         ${nome}
        Input Text      ${HOME_INPUT_EMAIL}           ${nome}@hahaha.com
        Input Text      ${HOME_INPUT_SENHA}           @tstegejL092737shdn
        Press Keys      none                          RETURN
###        Wait Until Element Is Visible       ${HOME_MESSAGE_SENHA} 
###        Element Should Contain      ${HOME_MESSAGE_SENHA}               Strong  


Então é criado o usuário
        Title Should Be         Log In ‹ ToolsQA Demo Site — WordPress
        

Dado que estou na tela para criar registro de usuário
        Go to       https://shop.demoqa.com/my-account/
        Title Should Be  My Account – ToolsQA Demo Site
        Capture Page Screenshot      
Quando Insiro os dados de usuário, e-mail e senha 123
        ${nome}         First Name
        Input Text      ${HOME_INPUT_USUARIO}         ${nome}
        Input Text      ${HOME_INPUT_EMAIL}           ${nome}@hahaha.com
        Input Text      ${HOME_INPUT_SENHA}           123
        Capture Page Screenshot      
        Press Keys      none                          RETURN
        Capture Page Screenshot      
Então é apresentado a informação que a senha não atende aos requisitos
        Wait Until Element Is Visible       ${HOME_MESSAGE_SENHA_ERRADA} 
        Element Should Contain      ${HOME_MESSAGE_SENHA_ERRADA} 