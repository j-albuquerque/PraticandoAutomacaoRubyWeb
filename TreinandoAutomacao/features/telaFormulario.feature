#language: pt

@treinando_telaFormulario
Funcionalidade: Treinando automação com ruby e cucumber
  Eu como usuario quero acessar a pagina automacaocombatista
  Para treinar a automacao no preenchimento de formulários
  Efetuar cliques em botões e validações

Contexto: Acessar a página automacaocombatista
  Dado que acesse a página automacaocombatista
  E clico na opcao "Formulário"

@criarUsuario
  Cenario: Preencher um formulário completo para cadastro de usuario
    Quando clico na opcao "Criar Usuários"
    E preencho todos os campos do formulario
    E clico no botao "CRIAR"
    Entao o cadastro é realizado com sucesso

@voltarNovoUsuario
  Cenario: Clicar em voltar na tela novo usuario
    Quando clico na opcao "Criar Usuários"
    E clico no botao "VOLTAR"
    Entao a HOME é exibida

@editarUsuarioRecemCriado
  Esquema do Cenario: Editar o usuário que acabou de ser criado
    Quando clico na opcao "Criar Usuários"
    E preencho todos os campos do formulario
    E clico no botao 'CRIAR'
    E clico no botao "EDITAR"
    E altero o campo "<campo>" para "<dado>"
    E clico no botao "CRIAR"
    Entao a edicao é realizada com sucesso
    Exemplos:
    |campo  |dado   |
    |nome   |Aline  |

@voltarEdicao
  Cenario: Clicar em voltar na tela de edição de usuário
    Quando clico na opcao "Criar Usuários"
    E preencho todos os campos do formulario
    E clico no botao 'CRIAR'
    E clico no botao "EDITAR"
    E clico no botao "VOLTAR"
    Entao exibe a tela Lista de usuários

@acessarListaUsuarios
  Cenario: Acessar a página lista de usuários
    Quando clico na opcao "Lista de Usuários"
    Entao exibe a tela Lista de usuários

@visualizarUsuario
  Cenario: Visualizar usuário a partir da tela Lista de usuários
    Quando clico na opcao "Lista de Usuários"
    E clico no botao "visualizar"
    Entao os dados do usuario é exibido

@editarUsuarioLista
  Cenario: Editar dados de um usuário a partir da lista de Usuários
    Quando clico na opcao "Lista de Usuários"
    E clico no botao "editar"
    Entao é exibida a tela de edição

@excluirUsuarioLista
  Cenario: Excluir um usuário da lista de Usuários
    Quando clico na opcao "Lista de Usuários"
    E clico no botao "excluir"
    Entao o usuario é excluido com sucesso

@novoUsuarioLista
  Cenario: Criar um novo usuário a partir da Lista de usuários
    Quando clico na opcao "Lista de Usuários"
    E clico no botao "Novo Usuário"
    E preencho todos os campos do formulario
    E clico no botao "CRIAR"
    Entao o cadastro é realizado com sucesso

@navegarPaginasLista
  Cenario: Navegar pelas páginas da Lista de Usuários
    Quando clico na opcao "Lista de Usuários"
    E clico para ir para proxima pagina
    Entao serao exibidos os dados da proxima pagina
