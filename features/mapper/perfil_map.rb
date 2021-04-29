# frozen_string_literal: true

# Responsavel pelo mapeamento da página de perfil
module PerfilMap
    class << self
      def lblWelcome
        Capybara.find('#my-account')
      end
    end
  end