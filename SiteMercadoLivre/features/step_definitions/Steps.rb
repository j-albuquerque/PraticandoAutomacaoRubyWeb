Dado("que eu acesse {string}") do |url|
  PageMercadoLivre.new.load
end
  
Quando("pesquisar o produto {string}") do |produto|
  @pesquisa = PageMercadoLivre.new
  @pesquisa.fazer_pesquisa(produto).native.send_keys(:enter)
end

Entao("devem ser exibidos pelo menos {int} resultados") do |int|
  prod = find('ol', :id => 'searchResults').text()
  puts prod
end
  
Quando("navegar até a segunda página de produtos") do
  @pagina = PageMercadoLivre.new
  @pagina.scroll()
  @pagina.paginacao.click

  #page.execute_script "window.scrollBy(0,12000)"
  #PageMercadoLivre.new.paginacao.click
end
  
Entao("devo tirar um print do penultimo item da página") do
  page.execute_script "window.scrollBy(0,12000)"
  page.save_screenshot('MercadoLivre.png')
  sleep 5
end