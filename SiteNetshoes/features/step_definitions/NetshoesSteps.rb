Dado("que eu acesse o site da Netshoes") do
  PageNetshoes.new.load
end

Quando("realizo a busca pelo produto {string}") do |produto|
  @pesquisa = PageNetshoes.new
  @pesquisa.pesquisar(produto).native.send_keys(:enter)
end

Entao("exibe a pagina de resultados com titulo {string}") do |texto|
  @validacao = PageNetshoes.new
  @validacao.validaResultado(texto)
end

Quando("clico no produto na posição {int} na pagina de resultados") do |int|
  @item = PageNetshoes.new
  @item.posicao.click
end

Entao("exibe a pagina com os detalhes do produto") do
  pending # Write code here that turns the phrase above into concrete actions
end