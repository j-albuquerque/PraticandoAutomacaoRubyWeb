# language: pt
# encoding: UTF-8

@Praticando
Funcionalidade: Praticando Automação com RUBY
   Eu como usuario quero acessar o site da Yaman
   Para navegar por todo site e opções que o mesmo oferece

    Contexto: Acessar o site
    Dado que eu acesse o site da YAMAN

    Cenario: Navegar em Soluções
    Quando clico no menu "<menu>"
    E clico no submenu "<submenu>"
    Entao deve exibir a tela com o texto "<texto>"
    Exemplos:
    |menu       |submenu                        |texto                                                                      |
    |Soluções   |Performance & Disponibilidade  |Suas aplicações precisam de mais velocidade e disponibilidade?             |
    |Soluções   |Segurança de Aplicações        |Suas aplicações estão seguras?                                             |
    |Soluções   |QA & Testes                    |Suas aplicações possuem muitos bugs? Precisa automatizar seus testes?      |
    |Soluções   |Devops                         |Precisa entregar aplicações com mais agilidade, eficiência e qualidade?    |