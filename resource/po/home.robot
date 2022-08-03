***Settings***
Library     SeleniumLibrary


**Variables**

${HOME_INPUT_PESQUISA}     //*[@class="gLFyf gsfi"]  
${HOME_RESULT_PESQUISA}       //*[@data-dobid="hdw"]  

**Keywords**

Quando acesso a página do Google
        Go to       http://www.google.com

Então confirmo que a página do Google está aberta
        Title Should Be     Google

Dado que estou na página do Google
         Então confirmo que a página do Google está aberta

Quando consulto a palavra Padrinho
        Input Text      ${HOME_INPUT_PESQUISA}        Padrinho
        Press Keys      none                            RETURN

Então deve apresentar os resultados referentes a palavra Padrinho
        Element Text Should Be            ${HOME_RESULT_PESQUISA}                 padrinho  