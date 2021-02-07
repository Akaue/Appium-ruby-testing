            #language:pt

            Funcionalidade: Login



            @login_happy
            Cenario: Usuario logado

            Dado que acesso a tela de Login
            Quando eu faço login com "tony@stark.com" e "pass123"
            Então posso ver a tela minha conta


            @login
            Esquema do Cenário: Tentativa de login

            Dado que acesso a tela de Login
            Quando eu faço login com <email> e <pass>
            Então devo ver <mensagem>

            Exemplos:

            | email             | pass     | mensagem                        |
            | "tinstark@.com"   | "55"     | "Usuário e/ou senha inválidos." |
            | "tinstddark@.com" | "535345" | "Usuário e/ou senha inválidos." |


