class MercadoLivre < SitePrism::Page

    set_url "https://www.mercadolivre.com.br/"
    
    #element :search, "input[class=nav-search-input]"
    element :search, "input[name=as_word]"
   
    end
  end