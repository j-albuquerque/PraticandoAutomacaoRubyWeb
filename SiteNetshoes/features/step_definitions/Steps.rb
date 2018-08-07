Dado("que eu acesse o site da Netshoes") do
    visit "https://www.netshoes.com.br/"
  end

  Quando("faço a busca pelo produto {string}") do |produto|
    busca = find('input', :id => 'search-input')
    busca.send_keys(produto).native.send_keys(:enter)
  end
  
  Entao("exibe a pagina de resultados") do
    element = find('ol', :class => 'breadcrumb')
    element.assert_selector('h1', :text => 'mochila')
    page.execute_script "window.scrollTo(0,400)"
  end

  Quando("ordeno os resultados por {string}") do |opcao|
    page.execute_script "window.scrollTo(0,400)"
    op = find('div', :class => 'sort-accordion')
    op.find('a', :class => 'title', :text => 'Mais Vendidos').click
    op2 = find('div', :class => 'content', :text => opcao).click
    #//*[@id="content"]/section/section[2]/div[1]/div/div/ul/li/div/a[2]
  end
  
  Entao("exibe a pagina com resultado ordenado") do
    pending # Write code here that turns the phrase above into concrete actions
  end