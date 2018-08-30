Dado("que acesse a página automacaocombatista") do
  PageTreinandoAutomacao.new.load
end

Quando("clico na opcao FORMULARIO") do
    @opcao = PageTreinandoAutomacao.new
    @opcao.clicar_formulario()
end

Quando("clico na opcao CRIAR USUARIOS") do
  @opcao = PageTreinandoAutomacao.new
  @opcao.clicar_criarUsuario()
end

Quando("preencho os campos do formulario") do
  @preencher_formulario = PageTreinandoAutomacao.new
  @preencher_formulario.validar_novoUsuarioTela()
  @preencher_formulario.preencherFormulariro()
end

Quando("clico no botao CRIAR") do
  @botao = PageTreinandoAutomacao.new
  @botao.botao_criar.click
end

Entao("o cadastro é realizado com sucesso") do
  @validacao = PageTreinandoAutomacao.new
  @validacao.validar_usuarioCriadoComSucesso()
end

Quando("clico no botao EDITAR") do
  @botao = PageTreinandoAutomacao.new
  @botao.botao_editar.click
end

Quando("altero o campo {string} para {string}") do |campo, dado|
  @editarCampo = PageTreinandoAutomacao.new
  @editarCampo.validar_editarUsuarioTela()
  @editarCampo.editarFormulario(campo, dado)
end

Entao("a edicao é realizada com sucesso") do
  @validacao = PageTreinandoAutomacao.new
  @validacao.validar_usuarioAtualizado()
end

Quando("clico na opcao LISTA DE USUARIOS") do
  @opcao = PageTreinandoAutomacao.new
  @opcao.clicar_listaUsuarios()
end

Entao("exibe a tela Lista de usuários") do
  @validacao = PageTreinandoAutomacao.new
  @validacao.validar_listaUsuarioTela()
end
