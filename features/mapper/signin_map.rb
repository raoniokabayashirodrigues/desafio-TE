# frozen_string_literal: true


# Responsavel pelo mapeamento da página SignIn
module AcessarSigninMap
    class << self
      def setEmail
        Capybara.find('input[name=email_create]')
      end
      def btnSignIn
        Capybara.find('.login')
      end
    end
  end