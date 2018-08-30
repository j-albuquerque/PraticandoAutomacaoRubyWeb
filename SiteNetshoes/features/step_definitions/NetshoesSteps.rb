Dado("que eu acesse o site da Netshoes") do
  PageNetshoes.new.load
end

Quando("realizo a busca pelo produto {string}") do |produto|
  @pesquisa = PageNetshoes.new
  @pesquisa.pesquisar(produto).native.send_keys(:enter)
end

Entao("exibe a pagina de resultados com titulo {string}") do |texto|
  @validacao = PageNetshoes.new
  @validacao.validaResultado('breadcrumb', texto)
end

Quando("clico no produto na posição {int} na pagina de resultados") do |int|
  @item = PageNetshoes.new
  @item.scrollPage()
  @item.posicao.click
end

Entao("exibe a pagina com os detalhes do produto") do
  page.assert_selector('button', :id => "buy-button-now")
end

Quando("clico no botao COMPRAR") do
  @botao = PageNetshoes.new
  @botao.botao_comprar.click
end

Entao("exibe o carrinho de compras") do
  @validacao = PageNetshoes.new
  @validacao.validaResultado('cart-title', 'CARRINHO')
end

Quando("calculo o frete para o endereco {string}") do |frete|
  @frete = PageNetshoes.new
  @frete.calcularFrete(frete)
end

Entao("é exibido o prazo de entrega do produto") do
  page.assert_selector('p', :text => 'Frete Netshoes')
end