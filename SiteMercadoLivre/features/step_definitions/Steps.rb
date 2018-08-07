Dado("que eu acesse {string}") do |url|
  PageMercadoLivre.new.load
end
  
Quando("pesquisar o produto {string}") do |produto|
  @pesquisa = PageMercadoLivre.new
  @pesquisa.fazer_pesquisa(produto).native.send_keys(:enter)
end

Entao("deve exibir o resultado da pesquisa pelo produto {string}") do |textpesquisa| 
  expect(PageMercadoLivre.new.resultpesquisa.text).to eq(textpesquisa) 
end                                                                            

Quando("navegar até a segunda página de produtos") do
  @pagina = PageMercadoLivre.new
  @pagina.scroll()
  @pagina.paginacao.click
end
  
Entao("devo tirar um print do penultimo item da página") do
  page.execute_script "window.scrollBy(0,12000)"
  page.save_screenshot('MercadoLivre.png')
  sleep 5
ends