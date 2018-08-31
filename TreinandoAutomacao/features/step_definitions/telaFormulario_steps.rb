Dado("que acesse a página automacaocombatista") do
  PageGeral.new.load
end

Dado("clico na opcao {string}") do |opcao|
  @telaGeral = PageGeral.new
  @telaGeral.selecionarOpcao(opcao)
end

Quando("preencho todos os campos do formulario") do
  @telaFormulario = PageFormulario.new
  @telaFormulario.consumirMassa()
end

Quando("clico no botao {string}") do |botao|
  @telaGeral = PageGeral.new
  @telaGeral.botoes_clicar(botao)
end

Entao("o cadastro é realizado com sucesso") do
  @telaGeral.validar_usuarioCriadoComSucesso()
end

Quando("altero o campo {string} para {string}") do |campo, dado|
  @telaGeral.validar_editarUsuarioTela()
  @telaFormulario.editarFormulario(campo, dado)
end

Entao("a edicao é realizada com sucesso") do
  @telaGeral.validar_usuarioAtualizado()
end

Entao("exibe a tela Lista de usuários") do
  @telaGeral.validar_listaUsuarioTela()
end

Entao("os dados do usuario é exibido") do
  #@telaFormulario.validar_dadosUsuarioTela()
end

Entao("é exibida a tela de edição") do
  @telaGeral.validar_editarUsuarioTela()
end

Entao("o usuario é excluido com sucesso") do
  @telaGeral.validar_usuarioRemovido()
end

Quando("clico para ir para proxima pagina") do
  @telaGeral.clicar_proximaPagina()
end

Entao("serao exibidos os dados da proxima pagina") do
  @telaGeral.validar_proximaPagina()
end

Entao("a HOME é exibida") do
  @telaGeral.validar_homeTela()
end
