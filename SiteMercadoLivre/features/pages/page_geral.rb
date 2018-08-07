class PageMercadoLivre < SitePrism::Page
    
    set_url "http://mercadolivre.com.br"
    
    element :campo_pesquisa, "input[name='as_word']"
	element :paginacao, "li[class='pagination__page'], a[text='2']"

    def fazer_pesquisa(produto)
        campo_pesquisa.set(produto)
    end

    def scroll
        page.execute_script "window.scrollBy(0,12000)"
    end

end