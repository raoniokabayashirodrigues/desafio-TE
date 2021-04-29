#language: pt

@login
Funcionalidade: Validar a página de login
 Como usuario previamente cadastrado
 Quero validar meu usuário na loja online
 Para realizar compras

@login_com_sucesso
 Cenário: 
   Dado que eu acesso a página inicial do site da Automation Practice
   E clico no botão Sign in
   Quando informo um email e senha válidos
   Entao espero ter a mensagem de boas vindas "Welcome to your account. Here you can manage all of your personal information and orders."

@login_sem_sucesso
 Cenário: 
   Dado que eu acesso a página inicial do site da Automation Practice
   E clico no botão Sign in
   Quando informo um email e senha inválidos
   Entao espero receber a mensagem na página "Authentication failed."



   