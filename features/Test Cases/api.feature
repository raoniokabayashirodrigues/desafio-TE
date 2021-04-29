#language: pt

Funcionalidade: Realizar uma busca na API do New York Times
    Como desenvolvedor
    Quero validar se a API está retornando os títulos de Stephen King
    Para implementar ela em meu sistema

@api_test_success
 Cenário: Buscar todos os títulos de Stephen King
    Dado o endereço da API
    Quando realizar uma requisição GET
    Entao a API irá retornar os dados do cadastro de todos os títulos respondendo o código 200