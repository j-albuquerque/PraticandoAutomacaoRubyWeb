# language: pt
# encoding: UTF-8

@Praticando
Funcionalidade: Praticando Automação com RUBY
   Eu como usuario quero acessar o site da Netshoes
   Para navegar por todo site e opções que o mesmo oferece

    Contexto: Acessar o site
    Dado que eu acesse o site da Netshoes

@Pesquisa
    Cenario: Pesquisar produto
    Quando realizo a busca pelo produto "Mochila"
    Entao exibe a pagina de resultados com titulo "mochila"

@SelecionarProduto
    Cenario: Selecionar um produto do resultado da pesquisa
    Quando realizo a busca pelo produto "mochila"
    E clico no produto na posição 5 na pagina de resultados
    Entao exibe a pagina com os detalhes do produto

@ProdutoNoCarrinho
    Cenario: Colocar um produto no carrinho
    Quando realizo a busca pelo produto "mochila"
    E clico no produto na posição 5 na pagina de resultados
    E clico no botao COMPRAR
    Entao exibe o carrinho de compras

@CalcularFrete
    Cenario: Calculara o frete de um produto no carrinho
    Quando realizo a busca pelo produto "mochila"
    E clico no produto na posição 5 na pagina de resultados
    E clico no botao COMPRAR
    E calculo o frete para o endereco "07151320"
    Entao é exibido o prazo de entrega do produto
