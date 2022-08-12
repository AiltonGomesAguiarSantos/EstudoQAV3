***Settings***
Library     SeleniumLibrary
Library    FakerLibrary

***Variables****
${HOME_INPUT_SEARCH_CONFIRM}        //*[@class="woocommerce-store-notice demo_store"]
${HOME_INPUT_SEARCH}                //*[@class="noo-search"]
${HOME_INPUT_SEARCH_QA}             //*[@class="note-search"]
${HOME_INPUT_CONSULTA}              //*[@class="form-control"]
${HOME_INPUT_RESULTADO_CONSULTA}    //*[@class="woocommerce-result-count"]

***Keywords***

    
Dado que estou na tela principal do site
     Maximize Browser Window
     Go to       https://shop.demoqa.com/
     Title Should Be  ToolsQA Demo Site – ToolsQA – Demo E-Commerce Site

    Wait Until Element Is Visible       ${HOME_INPUT_SEARCH}      

Quando clico na opção de Search
    Click Element                       ${HOME_INPUT_SEARCH}


Então é apresentado a opção para digitar o produto a ser consultado
    Element Text Should Be              ${HOME_INPUT_SEARCH_QA}     TYPE AND PRESS ENTER TO SEARCH


Quando digito a texto Dress
    Input Text                          ${HOME_INPUT_CONSULTA}      Dress

Então após dar Enter é apresentado os resultados de buscas
    Press Keys      none                            RETURN
    Element Should Contain              ${HOME_INPUT_RESULTADO_CONSULTA}    Showing
             