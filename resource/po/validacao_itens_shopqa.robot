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
${SELECIONANDO_FOTOS_1}                         //*[@class="icon ion-ios-arrow-forward"]
${VALIDAR_ADDICIONAL_INFO}                      //*[@class="additional_information_tab active"]
${VALIDAR_ICONE_FACE}                           //*[@class="fa fa-facebook"]
${VALIDAR_ICONE_TWITTER}                        //*[@class="fa fa-twitter"]
${VALIDAR_ICONE_GOOGLE}                         //*[@class="fa fa-google-plus"]
${VALIDAR_ICONE_PINTEREST}                      //*[@class="fa fa-pinterest"]
${VALIDAR_PRODUTOS_RELACIONADOS}                //*[@class="title-related"]
${ITENS_SHOP_IMAGEM_4}                          //*[@class="noo-woo-thumbnails__slide noo-woo-thumbnails__slide--active"]
${ITENS_SHOP_IMAGEM_3}                          xpath=(//*[@class="noo-woo-thumbnails__image"])[3]
${ITENS_SHOP_IMAGEM_2}                          xpath=(//*[@class="noo-woo-thumbnails__image"])[2]
${ITENS_SHOP_IMAGEM_1}                          xpath=(//*[@class="noo-woo-thumbnails__image"])[1]

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

    Wait Until Page Contains Element        ${RESULTADOS_SELECIONAR_PRODUTO}
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

Quando vou até o final das informações do produto
    Dado que o produto é visível na tela

Quando vou baixando a página
    Dado que o produto é visível na tela

Então é apresentado as informações adicionais

    Element Text Should Be      ${VALIDAR_ADDICIONAL_INFO}        ADDITIONAL INFORMATION

Então é apresentado os ícones das redes sociais


    Element Should Be Enabled   ${VALIDAR_ICONE_FACE}

    Element Should Be Enabled   ${VALIDAR_ICONE_TWITTER}

    Element Should Be Enabled   ${VALIDAR_ICONE_GOOGLE} 

    Element Should Be Enabled   ${VALIDAR_ICONE_PINTEREST} 


Então é apresentado os produtos relacionados

    Element Text Should Be      ${VALIDAR_PRODUTOS_RELACIONADOS}        RELATED PRODUCTS

Quando clico nas opções de fotos do produto
    Click Element    //*[@class="noo-woo-thumbnails__slide noo-woo-thumbnails__slide--active"]


Dado que o produto é visível na tela
    Dado que realizei a consulta de “Dress” no campo de pesquisa E apresentou produtos a serem escolhidos
    Quando seleciono o produto

Então são apresentados as imagens das fotos selecionadas
    Wait Until Element Is Visible     ${ITENS_SHOP_IMAGEM_3} 
    Click Element    ${ITENS_SHOP_IMAGEM_3} 
    Wait Until Element Is Visible     ${ITENS_SHOP_IMAGEM_2}
    Click Element    ${ITENS_SHOP_IMAGEM_2} 
    Wait Until Element Is Visible     ${ITENS_SHOP_IMAGEM_1} 
    Click Element    ${ITENS_SHOP_IMAGEM_1} 