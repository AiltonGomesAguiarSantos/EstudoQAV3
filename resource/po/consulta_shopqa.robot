***Settings***
Library    SeleniumLibrary
Library    FakerLibrary

***Variables****
${HOME_INPUT_SEARCH_CONFIRM}                    //*[@class="woocommerce-store-notice demo_store"]
${HOME_INPUT_SEARCH}                            //*[@class="noo-search"]
${HOME_INPUT_SEARCH_QA}                         //*[@class="note-search"]
${HOME_INPUT_CONSULTA}                          //*[@class="form-control"]
${HOME_INPUT_RESULTADO_CONSULTA}                //*[@class="woocommerce-result-count"]
${HOME_INPUT_SEARCH_t-SHIRT}                    //*[@class="page-title"]
${HOME_RETURN_SEARCH_PRODUTOS_RELACIONADO}      //*[@class="title-related"]
${HOME_RETURN_SEARCH_PRODUTO_NAO_ENCONTRADO}    //*[@class="woocommerce-info"]

***Keywords***


Dado que estou na tela principal do site
    Maximize Browser Window
    Go to                      https://shop.demoqa.com/
    Title Should Be            ToolsQA Demo Site – ToolsQA – Demo E-Commerce Site

    Wait Until Element Is Visible    ${HOME_INPUT_SEARCH}    

Quando clico na opção de Search
    Click Element    ${HOME_INPUT_SEARCH}


Então é apresentado a opção para digitar o produto a ser consultado
    Element Text Should Be    ${HOME_INPUT_SEARCH_QA}    TYPE AND PRESS ENTER TO SEARCH


Então após dar Enter é apresentado os resultados de buscas
    Press Keys                none                                RETURN
    Element Should Contain    ${HOME_INPUT_RESULTADO_CONSULTA}    Showing


#Dado que apresentou a opção para digitar o produto a ser consultado
#    Click Element    ${HOME_INPUT_SEARCH}

Quando digito a texto "${texto}"
    Input Text    ${HOME_INPUT_CONSULTA}    ${texto}
    Press Keys    none                      RETURN

Então após dar Enter é apresentado um único resultado em evidência
    Element Text Should Be    ${HOME_INPUT_SEARCH_t-SHIRT}    BLACK LUX GRAPHIC T-SHIRT

E após dar Enter é apresentado um único resultado e abaixo as opções de produtos relacionados
    Element Text Should Be    ${HOME_RETURN_SEARCH_PRODUTOS_RELACIONADO}    RELATED PRODUCTS


Então após dar Enter é apresentado a mensagem de que não foi encontrado produto
    Element Text Should Be    ${HOME_RETURN_SEARCH_PRODUTO_NAO_ENCONTRADO}    No products were found matching your selection.

Dado que apresentou a opção para digitar o produto a ser consultado
    Dado que estou na tela principal do site
    Quando clico na opção de Search
    Então é apresentado a opção para digitar o produto a ser consultado

