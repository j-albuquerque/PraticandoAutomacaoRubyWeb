# encoding: utf-8
# language: pt

Funcionalidade: Pesquisa no Mercado Livre
    Eu como usuário
    Quero acessar a página do Mercado Livre
    Para pesquisar um produto e visualizar os preços

@Pesquisa
Cenario: Pesquisa por um produto
    Dado que eu acesse a pagina do Mercado Livre
    Quando pesquisar o produto "galaxy S8"
    Entao deve exibir o resultado da pesquisa pelo produto "galaxy s8"


@PesquisaPrint
Cenario: Pesquisa por um produto e screenshot do mesmo
    Dado que eu acesse a pagina do Mercado Livre
    Quando pesquisar o produto "Galaxy S8"
    E navegar até a segunda página de produtos
    Entao devo tirar um print do penultimo item da página

@Login
Cenario: Realizar login no Mercado Livre
    Dado que eu acesse a pagina do Mercado Livre
    Quando preencho usuario com "usuario"
    E preencho senha com "senha"
    Entao o login é realizado com sucesso
    