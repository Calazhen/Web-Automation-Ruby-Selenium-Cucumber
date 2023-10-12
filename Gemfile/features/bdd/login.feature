# language: pt
@Login
Funcionalidade: Login

Contexto:
Dado que estou na tela de Login

@Login-falha
Esquema do Cenario:Login com e-mail inválido
Quando eu preencher "<Usuario>" e "<Senha>"
Entao devo ver a mensagem "<Mensagem>"

Exemplos:

|Usuario |Senha |Mensagem|
| a.com  | 123456 | E-mail inválido. |
| 1.com  | 123456 | E-mail inválido. |
| 1@.com | 123456 | E-mail inválido. |
| 1@a    | 123456 | E-mail inválido. |