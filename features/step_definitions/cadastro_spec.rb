Dado('que eu acesso a homepage do site da Automation Practice') do
  AcessarHomepageHelper.load_url
  expect(page).to have_title "My Store"    
end
  
Dado('clico no botão Sign in') do
  AcessarSigninHelper.acessar_signin
  expect(page).to have_title "Login - My Store"
  
end

Dado('informo o email válido') do
  AcessarSigninHelper.cadastrar_email
end

Dado('clico no botão Create an account') do
  AcessarSigninHelper.SubmitButton
end

Quando('alterar para a tela de {string}') do |lbl_create_an_account|
  expect(page).to have_content(lbl_create_an_account)
end

Quando('realizo o cadastro') do
  CadastroHelper.realiza_cadastro
end

Entao('espero ter a mensagem de boas vindas {string}') do |welcome|
  expect(AcessarPerfilHelper.welcome).to have_content(welcome)
end