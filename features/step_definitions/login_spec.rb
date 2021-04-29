# Login com sucesso
Dado('que eu acesso a página inicial do site da Automation Practice') do
  AcessarHomepageHelper.load_url
  expect(page).to have_title "My Store"  
end

Quando('informo um email e senha válidos') do
  AcessarSigninHelper.inputLoginEmailAndPassSuccess
  AcessarSigninHelper.inputSignin
end

# Login sem sucesso

Quando('informo um email e senha inválidos') do
  AcessarSigninHelper.inputLoginEmailAndPassUnsuccessfully
  AcessarSigninHelper.inputSignin
end

Entao('espero receber a mensagem na página {string}') do |unsuccessfullymessage|
  expect(page).to have_content(unsuccessfullymessage)
end