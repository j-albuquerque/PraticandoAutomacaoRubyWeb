# encoding: utf-8
# language: pt

Funcionalidade: Pesquisa no Mercado Livre
    Eu como usuário
    Quero acessar a página do Mercado Livre
    Para pesquisar um produto e visualizar os preços

@Pesquisa
Cenario: Pesquisa por um produto
    Dado que eu acesse "https://www.mercadolivre.com.br"
    Quando pesquisar o produto "Galaxy S8"
    Entao devem ser exibidos pelo menos 5 resultados


@PesquisaPrint
Cenario: Pesquisa por um produto e screenshot do mesmo
    Dado que eu acesse "https://www.mercadolivre.com.br"
    Quando pesquisar o produto "Galaxy S8"
    E navegar até a segunda página de produtos
    Entao devo tirar um print do penultimo item da página