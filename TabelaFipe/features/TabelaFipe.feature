#language: pt

@TabelaFipe

Funcionalidade: Treinando automação de testes
  Eu como usuário quero acessar o site
  Para consultar valores da tabela fipe

Contexto: Acessar página Tabela Fipe
  Dado que eu acesse a pagina da Tabela Fipe

@consultaVender
 Esquema do Cenario: Consultar o valor de um veículo para vender
  Quando seleciono a opcao "Vender" no campo "Interesse"
  E seleciono a opcao "<catVeiculo>" no campo "Categoria"
  E insiro a marca "<marca>"
  E insiro o modelo "<modelo>"
  E insiro o ano do modelo "<anoModelo>"
  Entao o resultado da pesquisa é exibido
  Exemplos:
  |catVeiculo |marca      |modelo |anoModelo  |
  |Carros     |Chevrolet  |Celta  |  20       |
  |Motos      |Honda      |Biz    |  20       |
  |Caminhoes  |Ford       |Cargo  |  19       |


@consultaComprar
 Esquema do Cenario: Consultar o valor de um veículo para comprar
  Quando seleciono a opcao "Comprar" no campo "Interesse"
  E seleciono a opcao "<catVeiculo>" no campo "Categoria"
  E insiro a marca "<marca>"
  E insiro o modelo "<modelo>"
  E insiro o ano do modelo "<anoModelo>"
  Entao o resultado da pesquisa é exibido
  Exemplos:
  |catVeiculo |marca      |modelo |anoModelo  |
  |Carros     |Chevrolet  |Celta  |  20       |
  |Motos      |Honda      |Biz    |  20       |
  |Caminhoes  |Ford       |Cargo  |  19       |

@consultaApenasPesquisar
 Esquema do Cenario: Consultar o valor de um veículo apenas por pesquisa
  Quando seleciono a opcao "Apenas Pesquisar" no campo "Interesse"
  E seleciono a opcao "<catVeiculo>" no campo "Categoria"
  E insiro a marca "<marca>"
  E insiro o modelo "<modelo>"
  E insiro o ano do modelo "<anoModelo>"
  Entao o resultado da pesquisa é exibido
  Exemplos:
  |catVeiculo |marca      |modelo |anoModelo  |
  |Carros     |Chevrolet  |Celta  |  20       |
  |Motos      |Honda      |Biz    |  20       |
  |Caminhoes  |Ford       |Cargo  |  19       |
