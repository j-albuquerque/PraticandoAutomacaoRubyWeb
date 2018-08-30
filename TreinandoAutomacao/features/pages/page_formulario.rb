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

    ## Mapeamento de Botões
    element :botao_criar, "input[name='commit']"
    element :botao_voltar, "a[class='btn waves-light red']"
    element :botao_editar, "a[class='btn waves-light blue']"

    # Clicar no link Formulário
    def clicar_formulario
      page.find('a', :class=> 'collapsible-header', :text=> 'Formulário').click
    end

    ## Clicar no link Criar Usuário
    def clicar_criarUsuario
      page.find('a', :text=> 'Criar Usuários').click
    end

    ## Clicar na opcao Lista de usuários
    def clicar_listaUsuarios
      page.find('a', :text=> 'Lista de Usuários').click
    end

    ## Preencher todos os campos do formulário
    def preencherFormulariro
      campo_nome.set("Ruby")
      campo_ultimoNome.set("Automacao")
      campo_email.set("automacao.rb@teste.com")
      campo_endereco.set("R dos Teste, 456")
      campo_universidade.set("Univesidade Teste")
      campo_profissao.set("Automatizador de testes")
      campo_genero.set("masculino")
      campo_idade.set("32")
    end

    ## Editar formulario
    def editarFormulario(campo, dado)
      case campo
      when "nome"
        campo_nome.set(dado)
      when "ultimo nome"
        ampo_ultimoNome.set(dado)
      end
    end

    ## Visualizar dados de usuário já cadastrado
    def visualizar_usuarioCadastrado
      first('a', :class => 'material-icons', :text => 'search').click
    end

    ## Validar mensgem de usuário criado com sucesso
    def validar_usuarioCriadoComSucesso
      page.assert_selector('p', :id => 'notice', :text => 'Usuário Criado com sucesso')
    end

    ## Validar mensagem de usuário atualizado com sucesso
    def validar_usuarioAtualizado
      page.assert_selector('p', :id => 'notice', :text => 'Seu Usuário foi Atualizado!')
    end

    ## Validar Tela carregada
    def validar_homeTela
        page.assert_selector('h5', :class => 'center', :text => 'Bem vindo ao Site de Automação do Batista.')
    end

    def validar_novoUsuarioTela
      page.assert_selector('h5', :class => 'center', :text => 'Novo Usuário!!')
    end

    def validar_listaUsuarioTela
      page.assert_selector('h5', :class => 'center', :text => 'Lista de Usuários!!')
    end

    def validar_editarUsuarioTela
      page.assert_selector('h5', :class => 'center', :text => 'Editar Usuário!!')
    end

end
