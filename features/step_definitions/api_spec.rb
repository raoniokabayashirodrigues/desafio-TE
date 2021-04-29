require 'httparty'

Dado('o endereço da API') do
    author = 'author=Stephen+King'
    api_key = '0RZOgpEJgRvPNPTdMVwxytj0q3IaWt0q'
    @api_uri = "https://api.nytimes.com/svc/books/v3/reviews.json?#{author}&api-key=#{api_key}"
end
  
Quando('realizar uma requisição GET') do
    @response = HTTParty.get(@api_uri)
end

Entao('a API irá retornar os dados do cadastro de todos os títulos respondendo o código {int}') do |response|
    expect(@response.code).to equal(response)
end