#language: pt

Funcionalidade: Realizar cadastro com sucesso
 Como usuario que está no site http://automationpractice.com/
 Quero me cadastrar no loja online
 Para realizar compras

@cadastro
 Cenário: Cadastro de um novo usuário na loja
   Dado que eu acesso a homepage do site da Automation Practice
   E clico no botão Sign in
   E informo o email válido
   E clico no botão Create an account
   Quando alterar para a tela de "CREATE AN ACCOUNT"
   E realizo o cadastro
   Entao espero ter a mensagem de boas vindas "Welcome to your account. Here you can manage all of your personal information and orders."


   