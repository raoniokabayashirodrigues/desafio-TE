# frozen_string_literal: true

# Responsavel pelo mapeamento da pagina de cadastro completo
module CadastroMap
  class << self    
    def SelecionarGenero(gender)
      Capybara.choose("#{gender}")
    end

    def InformarNome
      Capybara.find("input[name=customer_firstname]")
    end
    
    def InformarSobrenome
      Capybara.find("input[name=customer_lastname]")
    end
    
    def InformarSenha
      Capybara.find("input[name=passwd]")
    end

    def company
      Capybara.find("input[name=company]")
    end
    
    def selectDays
      dia = '12'
      element = 'days'
      Capybara.select(dia, from: element)
    end
    
    def selectMonth
      mes = 'February'
      element = 'months'
      Capybara.select(mes, from: element)
    end

    def selectYear
      ano = '1988'
      element = 'years'
      Capybara.select(ano, from: element)
    end

    def newsletter
      Capybara.find("#newsletter")
    end
    
    def specialOffers
      Capybara.find("#uniform-optin")
    end
    
    def address1
      Capybara.find("#address1")
    end
  
    def address2
      Capybara.find("#address2")
    end
    
    def city
      Capybara.find('input[name=city]')
    end

    def selectState
      select_state = 'Massachusetts'
      element = 'id_state'
      Capybara.select(select_state, from: 'id_state')
    end

    def cep
      Capybara.find("#postcode")
    end

    def more_infos
      Capybara.find("#other")
    end
    
    def home_phone
      Capybara.find("#phone")
    end
    
    def mobile_phone
      Capybara.find("#phone_mobile")
    end

    def field_alias
      Capybara.find("#alias")
    end
    
    def button_register
      Capybara.find("#submitAccount")
    end

  end
end