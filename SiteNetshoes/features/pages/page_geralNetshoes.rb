class PageNetshoes < SitePrism::Page
    
    set_url "https://www.netshoes.com.br/"

    #Campos
    element :campo_busca, "input[id='search-input']"
    element :campo_frete, "input[class='calculate-shipping__input', title='Seu CEP']"
    #Botões
    element :botao_comprar, "button[id='buy-button-now']"
    element :botao_calcularFrete, "button[class='calculate-shipping__button']"
    #Outras opções
    element :posicao, "div[data-position='5']"
    

    def pesquisar (produto)
        campo_busca.set(produto)
    end

    def validaResultado (classe, texto)
        page.assert_selector('h1', :class=> classe, :text => texto)
    end

    def scrollPage
        page.execute_script "window.scrollTo(0,400)"
    end

    def calcularFrete (frete)
        campo_frete.set(frete)
        botao_calcularFrete.click
    end

end

