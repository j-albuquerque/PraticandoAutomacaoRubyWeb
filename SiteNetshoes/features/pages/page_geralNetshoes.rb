class PageNetshoes < SitePrism::Page
    
    set_url "https://www.netshoes.com.br/"

    element :campo_busca, "input[id='search-input']"
    element :validar_resultado, "ol[class='breadcrumb'], h1[text='mochila']"
    element :campo_ordenacao, "a[class='title' text='Mais Vendidos']"
    element :op_ordenar, "div[class='content']"
    element :posicao, "div[data-position='5']"

    
    def pesquisar (produto)
        campo_busca.set(produto)
    end

    def validaResultado (texto)
        validar_resultado.assert_selector('h1', :text => texto)
    end

    def ScrollPage
        page.execute_script "window.scrollTo(0,400)"
    end

    def selecionarOpcao
        posicao.click
    end

end

