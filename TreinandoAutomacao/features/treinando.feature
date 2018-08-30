#language: pt

@Treinando
Funcionalidade: Treinando automação com ruby e cucumber
  Eu como usuario quero acessar a pagina automacaocombatista
  Para treinar a automacao no preenchimento de formulários
  Efetuar cliques em botões e validações

Contexto: Acessar a página automacaocombatista
  Dado que acesse a página automacaocombatista

@preencherFormulariro
  Cenario: Preencher um formulário completo para cadastro de usuario
    Quando clico na opcao FORMULARIO
    E clico na opcao CRIAR USUARIOS
    E preencho os campos do formulario
    E clico no botao CRIAR
    Entao o cadastro é realizado com sucesso

@editarUsuarioRecemCriado
  Esquema do Cenario: Editar o usuário que acabou de ser criado
  Quando clico na opcao FORMULARIO
  E clico na opcao CRIAR USUARIOS
  E preencho os campos do formulario
  E clico no botao CRIAR
  E clico no botao EDITAR
  E altero o campo "<campo>" para "<dado>"
  E clico no botao CRIAR
  Entao a edicao é realizada com sucesso
  Exemplos:
  |campo  |dado   |
  |nome   |Aline  |

@acessarListaUsuarios
  Cenario: Acessar a página lista de usuários
  Quando clico na opcao FORMULARIO
  E clico na opcao LISTA DE USUARIOS
  Entao exibe a tela Lista de usuários