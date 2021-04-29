# Modulo responsavel pela interação com a pagina Homepage

require 'faker'


module AcessarSigninHelper
    class << self

      def cadastrar_email
        AcessarSigninMap.setEmail.set(Faker::Internet.email)
      end
      
      def acessar_signin
        AcessarSigninMap.btnSignIn.click
      end

      def campo_create_an_account
        LoginRegisterMap.lbl_create_an_account.text
      end
    end
  end