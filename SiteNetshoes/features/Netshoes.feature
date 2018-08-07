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
    Quando faço a busca pelo produto "Mochila"
    Entao exibe a pagina de resultados

@PesquisaOrdenada
    Cenario: Ordenar pesquisa por Lançamentos
    Quando faço a busca pelo produto "Mochila"
    E ordeno os resultados por "Lançamentos"
    Entao exibe a pagina com resultado ordenado