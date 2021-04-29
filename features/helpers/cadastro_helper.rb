# Modulo responsavel pela interação com a pagina de cadastro completo

module CadastroHelper
    class << self

      def realiza_cadastro
        Capybara.ignore_hidden_elements = false

        #--------------------------------------#
        #Arquivo de Massa de Dados
        file = YAML.load_file(File.join(Dir.pwd, 'features/fixtures/cadastro.yaml'))
        @cadastro = file
        #--------------------------------------#
        
        CadastroMap.SelecionarGenero(@cadastro["gender"])
        CadastroMap.InformarNome.set(@cadastro["nome"])
        CadastroMap.InformarSobrenome.set(@cadastro["sobrenome"]) 
        CadastroMap.InformarSenha.set(@cadastro["senha"])
        CadastroMap.selectDays
        CadastroMap.selectMonth
        CadastroMap.selectYear
        CadastroMap.newsletter.click
        CadastroMap.specialOffers.click
        CadastroMap.company.set(@cadastro["company"])
        CadastroMap.address1.set(@cadastro["address1"])
        CadastroMap.address2.set(@cadastro["address2"])
        CadastroMap.city.set(@cadastro["city"])
        CadastroMap.selectState
        CadastroMap.cep.set(@cadastro["cep"])
        CadastroMap.more_infos.set(@cadastro["more_infos"])
        CadastroMap.home_phone.set(@cadastro["home_phone"])
        CadastroMap.mobile_phone.set(@cadastro["mobile_phone"])
        CadastroMap.field_alias.set("")
        CadastroMap.field_alias.set(@cadastro["alias"])
        CadastroMap.button_register.click
      end
    end
  end