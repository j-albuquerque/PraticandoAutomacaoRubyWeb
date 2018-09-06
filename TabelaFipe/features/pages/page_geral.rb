class PageGeral < SitePrism::Page

  ## Link da página que deve ser acessada
  set_url "https://carros.uol.com.br/tabela-fipe/"

  def scroll_page
    page.execute_script "window.scrollBy(0,1400)"
  end

  def selecionar_campo(campo)
    case campo
    when "Interesse"
      page.find('#ads-interesse span').click
    when "Categoria"
      page.find('#ads-categoria span').click
    end
  end

  def selecionar_opcao(opcao)
    case opcao
    when "Vender"
      page.find(:xpath, '//*[@id="ads-interesse"]/div/ul/li[1]').click
    when "Comprar"
      page.find(:xpath, '//*[@id="ads-interesse"]/div/ul/li[2]').click
    when "Apenas Pesquisar"
      page.find(:xpath, '//*[@id="ads-interesse"]/div/ul/li[3]').click
    when "Carros"
      page.find(:xpath, '//*[@id="ads-categoria"]/div/ul/li[1]').click
    when "Motos"
      page.find(:xpath, '//*[@id="ads-categoria"]/div/ul/li[2]').click
    when "Caminhoes"
      page.find(:xpath, '//*[@id="ads-categoria"]/div/ul/li[3]').click
    end
  end

  def preencher_marca(marca)
    page.find('#ads-marca span').click
    page.find(:xpath, '//*[@id="ads-marca"]/div/div/input').send_keys(marca).native.send_keys(:enter)
  end

  def preencher_modelo(modelo)
    page.find(:xpath,
      '/html/body/div[4]/article/div[2]/div/div[1]/div/div/div[1]/div[3]/section/form[2]/div/div[4]/div[1]/div/div/span').click
    page.find(:xpath,
      '/html/body/div[4]/article/div[2]/div/div[1]/div/div/div[1]/div[3]/section/form[2]/div/div[4]/div[1]/div/div/div/div/input').send_keys(modelo)
    page.find(:xpath,
      '/html/body/div[4]/article/div[2]/div/div[1]/div/div/div[1]/div[3]/section/form[2]/div/div[4]/div[1]/div/div/div/ul/li[2]').click
  end

  def preencher_anoModelo(anoModelo)
    page.find(:xpath,
      '/html/body/div[4]/article/div[2]/div/div[1]/div/div/div[1]/div[3]/section/form[2]/div/div[4]/div[2]/div/div/span').click
    page.find(:xpath,
      '/html/body/div[4]/article/div[2]/div/div[1]/div/div/div[1]/div[3]/section/form[2]/div/div[4]/div[2]/div/div/div/div/input').send_keys(anoModelo)
    page.find(:xpath, '/html/body/div[4]/article/div[2]/div/div[1]/div/div/div[1]/div[3]/section/form[2]/div/div[4]/div[2]/div/div/div/ul/li[2]').click
  end

  def valida_resultPesquisa
    page.assert_selector(:xpath,
    '/html/body/div[4]/article/div[2]/div/div[1]/div/div/div[1]/div[3]/section/div')
  end

end
