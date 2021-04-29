# Modulo responsavel pela interação com a pagina de perfil
module AcessarPerfilHelper
    class << self
      def welcome
        PerfilMap.lblWelcome.text
      end
    end
  end