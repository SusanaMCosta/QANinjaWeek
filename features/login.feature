#Language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    Cenário: Login do usuário
        Dado que acesso a página Login
        Quando submeto minhas credenciais com: "susanamoreira@gmail.com" e "susana"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "<mail>" e "<senha>"
        Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

        Exemplos:
            | email | senha |
            | susanamoreira@123.com.br | susana |
            |                          |        |
            | susanamoreira@gmail.com  |        |
            | susanamoreira@123.com.br |        |
            