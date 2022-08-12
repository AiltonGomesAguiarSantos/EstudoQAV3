***Settings***
Library    SeleniumLibrary
Library    FakerLibrary

***Variables****
${LOGIN_INPUT_USUARIO}      //*[@id="username"]
${LOGIN_INPUT_SENHA}        //*[@id="password"]
${LOGIN_RESULT_PESQUISA}    //*[@class="post post-page current-item"]
${LOGIN_RESULT_ERROR}       //*[@class="woocommerce-error"]
${LOGIN_URL}                https://shop.demoqa.com/my-account/


***Keywords***

Dado que tenho uma tela para acessar a area logavel
    Go to              ${LOGIN_URL} 
    Title Should Be    My Account – ToolsQA Demo Site
   

Então é apresentado a página inicial após o acesso.

    Element Text Should Be    ${LOGIN_RESULT_PESQUISA}    My Account    


Dado que estou na tela para logar
    Go to              https://shop.demoqa.com/my-account/
    Title Should Be    My Account – ToolsQA Demo Site


Quando Insiro os dados de usuário "${usuario}" e senha "${senha}"
    Input Text    ${LOGIN_INPUT_USUARIO}    ${usuario}
    Input Text    ${LOGIN_INPUT_SENHA}      ${senha}
    Press Keys    none                     RETURN


Então é apresentado a informação que a usuário não existe
    Element Should Be Visible    ${LOGIN_RESULT_ERROR}    ERROR
    Capture Page Screenshot


########################### ATUALIZADO #######################################