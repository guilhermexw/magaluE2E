#language: pt

Funcionalidade: Realizar busca de produto
    Sendo um visitante que realizou a busca de um produto no site
    Posso visualizar os itens encontrados
    Para que eu possa tomar uma decisão de compra

    Cenario: Buscar produto existente

        Dado que digito o item "Televisor Smart TV LED 43" no campo da busca
        Quando eu clico no botão para realizar a busca
        Então vejo a mensagem com a quantidade de: "produtos encontrados"
           
    Cenario: Buscar produto sem resultado encontrado

        Dado que digito o item "Televisor Smart TV LED 43 modelo 2021" no campo da busca
        Quando eu clico no botão para realizar a busca
        Então vejo a mensagem: "Nenhum resultado encontrado para a consulta"
            E vejo a mensagem com a quantidade de: "resultados aproximados"

    Cenario: Buscar produto inexistente

        Dado que digito o item "hidroxicloroquina" no campo da busca
        Quando eu clico no botão para realizar a busca
        Então vejo a mensagem: "Sua busca por hidroxicloroquina não encontrou resultado algum :("