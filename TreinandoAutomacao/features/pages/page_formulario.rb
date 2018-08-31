class PageFormulario < SitePrism::Page

    ## Link da página que deve ser acessada
    set_url "https://automacaocombatista.herokuapp.com/treinamento/home "

    ## Mapeamento dos campos do formulário
    element :campo_nome, "input[id='user_name']"
    element :campo_ultimoNome, "input[id='user_lastname']"
    element :campo_email, "input[id='user_email']"
    element :campo_endereco, "input[id='user_address']"
    element :campo_universidade, "input[id='user_university']"
    element :campo_profissao, "input[id='user_profile']"
    element :campo_genero, "input[id='user_gender']"
    element :campo_idade, "input[id='user_age']"

    ##Consumir massa
    def consumirMassa
      posicao = rand(0..3)
      @nome = $dados_usuario[posicao]['nome']
      @ultimoNome = $dados_usuario[posicao]['ultimoNome']
      @email = $dados_usuario[posicao]['email']
      @endereco = $dados_usuario[posicao]['endereco']
      @universidade = $dados_usuario[posicao]['universidade']
      @profissao = $dados_usuario[posicao]['profissao']
      @genero = $dados_usuario[posicao]['genero']
      @idade = $dados_usuario[posicao]['idade']
      preencherFormulariro(@nome, @ultimoNome, @email, @endereco, @universidade, @profissao, @genero, @idade)
    end

    ## Preencher todos os campos do formulário
    def preencherFormulariro(nome, ultimoNome, email, endereco, universidade, profissao, genero, idade)
      campo_nome.set(nome)
      campo_ultimoNome.set(ultimoNome)
      campo_email.set(email)
      campo_endereco.set(endereco)
      campo_universidade.set(universidade)
      campo_profissao.set(profissao)
      campo_genero.set(genero)
      campo_idade.set(idade)
    end

    ## Editar formulario
    def editarFormulario(campo, dado)
      case campo
      when "nome"
        campo_nome.set(dado)
      when "ultimo nome"
        campo_ultimoNome.set(dado)
      when "e-mail"
        campo_email.set(dado)
      when "universidade"
        campo_universidade.set(dado)
      when "profissão"
        campo_profissao.set(dado)
      when "genero"
        campo_genero.set(dado)
      when "idade"
        campo_idade.set(dado)
      end
    end


end
