

Dado("que eu acesse o site da YAMAN")do
visit "http://yaman.com.br/"
end

Quando("clico no menu {string}") do |opcao|
menu = find('li', :id => 'menu-item-2829')
menu.click
end

Quando("clico no submenu {string}") do |opcao|
#submenu = find('li', :id => 'menu-item-2833')
submenu = find('a', :text => opcao)
submenu.click
end

Entao("deve exibir a tela com o texto {string}") do |texto|
page.assert_selector('h1', :class => 'h1-new-pages', :text => texto)
end