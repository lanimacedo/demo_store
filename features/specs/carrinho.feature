#language: pt

    Funcionalidade: Validar fluxo de adicionar itens ao carrinho

    Cenario: pesquisar e adicionar ao carrinho dois itens
        Dado que estou na home 
        Quando pesquiso pelo produto 'Batman' no campo de busca
            E acesso o detalhe do produto
            E adiciono ao carrinho
        Quando pesquiso pelo produto 'PS3' no campo de busca
            E acesso o detalhe do produto
            E adiciono ao carrinho
        Entao valido se os produtos foram adicionados com sucesso


