class PageGeral < SitePrism::Page

      ## Link da página que deve ser acessada
      set_url "https://automacaocombatista.herokuapp.com/treinamento/home"

      ## Mapeamento de Botões
      element :botao_criar, "input[name='commit']"
      element :botao_voltar, "a[class='btn waves-light red']"
      element :botao_editar, "a[class='btn waves-light blue']"
      element :botao_novoUsuario, "a[class='btn waves-light green']"
      element :bota_proximo, "span[class='next']"

      ## Selecionar opção
      def selecionarOpcao(opcao)
        case opcao
        when "Formulário"
          # Clicar no link Formulário
          page.find('a', :class=> 'collapsible-header', :text=> opcao).click
        when "Criar Usuários"
          ## Clicar no link Criar Usuário
          page.find('a', :text=> 'Criar Usuários').click
          page.assert_selector('h5', :class => 'center', :text => 'Novo Usuário!!')
        when "Lista de Usuários"
          ## Clicar na opcao Lista de usuários
          page.find('a', :text=> 'Lista de Usuários').click
          page.assert_selector('h5', :class => 'center', :text => 'Lista de Usuários!!')
        when "Busca de elementos"
          # Clicar no link Busca de elementos
          page.find('a', :class=> 'bold.active', :text=> opcao).click
        when "Links"
          # Clicar no link Busca de elementos
          page.find('a', :class=> 'bold.active', :text=> opcao).click
        end
      end

      ## Clicar nos botões das telas geral
      def botoes_clicar(botao)
        case botao
        when "CRIAR"
          botao_criar.click
        when "VOLTAR"
          botao_voltar.click
        when "EDITAR"
          botao_editar.click
        when "visualizar"
          first('a', :class => 'material-icons', :text => 'search').click
        when "editar"
          first('a', :class => 'material-icons', :text => 'edit').click
        when "excluir"
          first('a', :class => 'material-icons', :text => 'delete').click
          ## interagir com o poupup do navegador
          a = page.driver.browser.switch_to.alert
            if a.text == 'something'
            a.dismiss
            else
            a.accept
            end
          when "Novo Usuário"
            botao_novoUsuario.click
        end
      end

      ## Clicar em próximo para seguir para a próxima página
      def clicar_proximaPagina
        bota_proximo.find('a', :text => 'Próximo').click
      end

      ## Validar mensagem de usuário criado com sucesso
      def validar_usuarioCriadoComSucesso
        page.assert_selector('p', :id => 'notice', :text => 'Usuário Criado com sucesso')
      end

      ## Validar mensagem de usuário atualizado com sucesso
      def validar_usuarioAtualizado
        page.assert_selector('p', :id => 'notice', :text => 'Seu Usuário foi Atualizado!')
      end

      ## Validar mensagem de usuário removido com sucesso
      def validar_usuarioRemovido
        page.assert_selector('p', :id => 'notice', :text => 'Seu Usuário foi removido com sucesso!')
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

      def validar_proximaPagina
        page.assert_selector('span', :class => 'first', :text => 'Primeiro')
      end

      ## 'Scrollar' a página
      def scroll_page
          page.execute_script "window.scrollBy(0,2000)"
      end

end
