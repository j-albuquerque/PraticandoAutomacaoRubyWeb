Dado("que acesse a página automacaocombatista") do
  PageFormulario.new.load
end

Dado("clico na opcao {string}") do |opcao|
  @telaFormulario = PageFormulario.new
  @telaFormulario.selecionarOpcao(opcao)
end

Quando("preencho todos os campos do formulario") do
  @telaFormulario.validar_novoUsuarioTela()
  @telaFormulario.preencherFormulariro()
end

Entao("o cadastro é realizado com sucesso") do
  @telaFormulario.validar_usuarioCriadoComSucesso()
end

Quando("altero o campo {string} para {string}") do |campo, dado|
  @telaFormulario.validar_editarUsuarioTela()
  @telaFormulario.editarFormulario(campo, dado)
end

Entao("a edicao é realizada com sucesso") do
  @telaFormulario.validar_usuarioAtualizado()
end

Entao("exibe a tela Lista de usuários") do
  @telaFormulario.validar_listaUsuarioTela()
end

Quando("clico no botao {string}") do |botao|
  @telaFormulario.botoes_listaUsuarios(botao)
end

Entao("os dados do usuario é exibido") do
  #@telaFormulario.validar_dadosUsuarioTela()
end

Entao("é exibida a tela de edição") do
  @telaFormulario.validar_editarUsuarioTela()
end
