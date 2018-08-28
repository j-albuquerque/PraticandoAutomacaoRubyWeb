class PageMercadoLivre < SitePrism::Page
    
    set_url "http://mercadolivre.com.br"
    
    #Pesquisa
    element :campo_pesquisa, "input[name='as_word']"
    element :paginacao, "li[class='pagination__next']"
    element :resultpesquisa, "h1[class='breadcrumb__title']"

    #Login
    element :entre, "a[class='option-login']"
    element :campo_user, "input[name='user_id']"
    element :campo_senha, "input[id='password']"
    element :botao_continuar, "input[class='ui-button ui-button--primary auth-button auth-button--user']"
    element :botao_entrar, "button[id='action-complete']"
    element :captcha, "div[class='recaptcha-checkbox-checkmark']"


    def fazer_pesquisa(produto)
        campo_pesquisa.set(produto)
    end

    def scroll
        page.execute_script "window.scrollBy(0,12000)"
    end

    def fazer_login(email, senha)
        entre.click
        campo_user.set(email)
        botao_continuar.click
        campo_senha.set(senha)
        botao_entrar.click
        sleep 10
    end

end