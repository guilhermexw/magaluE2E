#language: pt

Funcionalidade: Carrinho de compras
    Sendo um visitante que escolheu um produto para compra no site
    Posso clicar no item
    Para que eu possa inclui-lo no carrinho de compras

    Cenario: Produto disponível no meu carrinho

        Dado que escolhi o item "Televisor Smart TV LED 43 LG 43LM" na lista
        Quando eu adiciono ao meu carrinho de compras
        Então visualizo o produto e seu respectivo preço no carrinho 

    Cenario: Produto sem selecionar voltagem

        Dado que escolhi o item "geladeira panasonic 483 litros" na lista
        Quando eu adiciono ao meu carrinho de compras
        Então vejo a mensagem: "Por favor, selecione uma opção."

