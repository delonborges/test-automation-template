#language: pt

Funcionalidade: Efetuar login

  Contexto:
    Dado que a área de login é acessada

  Cenário: Login com sucesso
    Quando efetuamos login com "teste@teste.teste" e "teste"
    Então o usuário "Teste Teste" é apresentado na área logada

  Esquema do Cenário: Login sem sucesso
    Quando efetuamos login com <email> e <senha>
    Então a mensagem de alerta <texto> é apresentada
    Exemplos:
      | email               | senha              | texto                        |
      | "teste@teste.teste" | "invalid password" | "Authentication failed."     |
      | "invalid user"      | "teste"            | "Invalid email address."     |
      | ""                  | "teste"            | "An email address required." |
      | "teste@teste.teste" | ""                 | "Password is required."      |