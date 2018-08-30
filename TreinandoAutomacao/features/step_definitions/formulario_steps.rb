Dado("que acesse a página automacaocombatista") do
  PageFormulario.new.load
end

Dado("clico na opcao FORMULARIO") do
    @telaFormulario = PageFormulario.new
    @telaFormulario.clicar_formulario()
end

Quando("clico na opcao CRIAR USUARIOS") do
  @telaFormulario.clicar_criarUsuario()
end

Quando("preencho todos os campos do formulario") do
  @telaFormulario.validar_novoUsuarioTela()
  @telaFormulario.preencherFormulariro()
end

Quando("clico no botao CRIAR") do
  @telaFormulario.botao_criar.click
end

Entao("o cadastro é realizado com sucesso") do
  @telaFormulario.validar_usuarioCriadoComSucesso()
end

Quando("clico no botao EDITAR") do
  @telaFormulario.botao_editar.click
end

Quando("altero o campo {string} para {string}") do |campo, dado|
  @telaFormulario.validar_editarUsuarioTela()
  @telaFormulario.editarFormulario(campo, dado)
end

Entao("a edicao é realizada com sucesso") do
  @telaFormulario.validar_usuarioAtualizado()
end

Quando("clico na opcao LISTA DE USUARIOS") do
  @telaFormulario.clicar_listaUsuarios()
end

Entao("exibe a tela Lista de usuários") do
  @telaFormulario.validar_listaUsuarioTela()
end

Quando("clico no botao visualizar") do
  @telaFormulario.visualizar_usuarioCadastrado()
end

Entao("os dados do usuario é exibido") do

end
