#language: pt

Funcionalidade: Cadastro de usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | susanamoreira@gmail.com |
            | senha          | susana                  |
            | senha_confirma | susana                  |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <senha_confirma> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                   | senha  | confirma_senha | mensagem_saida                       |
            |                         | susana | susana         | Oops! Informe seu email.             |
            | susanamoreira@gmail.com |        |                | Oops! Informe sua senha.             |
            | susanamoreira@gmail.com | susana | susana123      | Oops! Senhas não são iguais.         |
            |                         |        |                | Oops! Informe seu email e sua senha. |

