Dado("que eu acesse a pagina do Mercado Livre") do
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
  sleep 5
  page.save_screenshot('MercadoLivre.png')
end

Quando("preencho usuario com {string}") do |usuario|
  @user = PageMercadoLivre.new
  @user.entre.click
  @user.campo_user.set(usuario)
  @user.botao_continuar.click
end

Quando("preencho senha com {string}") do |senha|
  @login = PageMercadoLivre.new
  @login.campo_senha.set(senha)
  @login.botao_entrar.click
end

Entao("o login é realizado com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end
