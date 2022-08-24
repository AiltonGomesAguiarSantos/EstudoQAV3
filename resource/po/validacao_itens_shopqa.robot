***Settings***
Library    SeleniumLibrary
Library    FakerLibrary

***Variables****
${HOME_INPUT_SEARCH}                            //*[@class="noo-search"]
${HOME_INPUT_SEARCH_QA}                         //*[@class="note-search"]
${HOME_INPUT_CONSULTA}                          //*[@class="form-control"]
${HOME_INPUT_RESULTADO_CONSULTA}                //*[@class="woocommerce-result-count"]
${HOME_RETURN_SEARCH_PRODUTOS_RELACIONADO}      //*[@class="title-related"]
${HOME_RETURN_SEARCH_PRODUTO_NAO_ENCONTRADO}    //*[@class="woocommerce-info"]
${RESULTADOS_SELECIONAR_PRODUTO}                //*[@href="https://shop.demoqa.com/product/white-milkmaid-hook-and-eye-bodycon-midi-dress/"]
${ESPECIFICACAO_PRODUTO}                        //*[@class="product-essential__description"]
${ESCOLHENDO_TAMANHO}                           //*[@id="pa_size"]
${ESCOLHENDO_TAMANHO_MEDIUM}                    //*[@value="medium"]
${ESCOLHENDO_COR}                               //*[@id="pa_color"]
${ESCOLHENDO_COR_WHITE}                         //*[@value="white"]


***Keywords***



Dado que realizei a consulta de “Dress” no campo de pesquisa E apresentou produtos a serem escolhidos

    Maximize Browser Window
    Go to                      https://shop.demoqa.com/
    Title Should Be            ToolsQA Demo Site – ToolsQA – Demo E-Commerce Site

    Wait Until Element Is Visible    ${HOME_INPUT_SEARCH}

    Click Element    ${HOME_INPUT_SEARCH}

    Element Text Should Be    ${HOME_INPUT_SEARCH_QA}    TYPE AND PRESS ENTER TO SEARCH

    Wait Until Element Is Visible   ${HOME_INPUT_CONSULTA} 

    Input Text    ${HOME_INPUT_CONSULTA}            Dress
    Press Keys    none                      RETURN

    #####Dado que realizei a consulta de "${texto}" no campo de pesquisa E apresentou produtos a serem escolhidos


Quando seleciono o produto

    Click Element   ${RESULTADOS_SELECIONAR_PRODUTO}  

Então é apresentado as informações do produto

    Element Text Should Be          ${ESPECIFICACAO_PRODUTO}    a white midi dress in a milkmaid style featuring puff detail sleeves and split on the reverse.

Quando clico na opção de tamanho

    Click Element       ${ESCOLHENDO_TAMANHO} 

    Click Element       ${ESCOLHENDO_TAMANHO_MEDIUM}

Então é apresentado as opções de escolha de tamanho

    Element Text Should Be      ${ESCOLHENDO_TAMANHO_MEDIUM}        Medium


Quando clico na opção de cor

    Click Element       ${ESCOLHENDO_COR} 

Então é apresentado as opções de escolha de cor E quando seleciono a cor é apresentado a foto com a cor escolhida

    Click Element       ${ESCOLHENDO_COR_WHITE}

    Element Text Should Be      ${ESCOLHENDO_COR_WHITE}        White

    