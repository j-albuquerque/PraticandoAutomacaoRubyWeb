#@telaGeral = PageGeral.new
Dado("que eu acesse a pagina da Tabela Fipe") do
  PageGeral.new.load
  #binding.pry
end

Quando("seleciono a opcao {string} no campo {string}") do |opcao, campo|
  @tbFipe = PageGeral.new
  @tbFipe.scroll_page()
  @tbFipe.selecionar_campo(campo)
  @tbFipe.selecionar_opcao(opcao)
end

Quando("insiro a marca {string}") do |marca|
  @tbFipe.preencher_marca(marca)
end

Quando("insiro o modelo {string}") do |modelo|
  @tbFipe.preencher_modelo(modelo)
end

Quando("insiro o ano do modelo {string}") do |anoModelo|
  @tbFipe.preencher_anoModelo(anoModelo)
end

Entao("o resultado da pesquisa é exibido") do
  @tbFipe.valida_resultPesquisa()
end
