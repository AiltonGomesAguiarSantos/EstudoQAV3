***Settings***
Library     SeleniumLibrary
Library     FakerLibrary

Resource        shop_myaccount.robot
***Variables***
${LINK_LOST_PASSWORD}           //*[@href="https://shop.demoqa.com/my-account/lost-password/"]
${PAGINA_RESET_PASSWORD}        //p[contains(.,'Lost your password? Please enter your username or email address. You will receive a link to create a new password via email.')]
${HOME_INPUT_USUARIO}           //*[@id="user_login"]
${BOTTON_RESET_SENHA}           //*[@class="woocommerce-Button button"]
${VALIDAR_RESET_SENHA}          //p[contains(.,'A password reset email has been sent to the email address on file for your account, but may take several minutes to show up in your inbox. Please wait at least 10 minutes before attempting another reset.')]
${HOME_INPUT_EMAIL}             //*[@id="user_login"]

***Keywords***

########## Cenário 1

[Documentation]         Cenário 1 - BDDs

Dado que estou na tela de acesso
    Dado que tenho uma tela para criar acesso
e escolho a opção de Lost your password?
    Click Element   ${LINK_LOST_PASSWORD}
    
    Element Should Be Visible  ${PAGINA_RESET_PASSWORD}
e insiro a informação de usuário
    Input Text  ${HOME_INPUT_USUARIO}       padrinho
        
Quando clico em reset password
    Click Element       ${BOTTON_RESET_SENHA}

Então é apresentado a mensagem de que o reset foi realizado e enviado e-mail
    Element Should Be Visible  ${VALIDAR_RESET_SENHA}

[Documentation]         Cenário 2

e insiro a informação de e-mail
    Input Text  ${HOME_INPUT_USUARIO}       padrinho@dac.com
    
