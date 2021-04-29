# Modulo responsavel pela interação com a pagina Homepage

module AcessarSigninHelper
    class << self
        #--------------------------------------#
        #Arquivo de Massa de Dados
        
        #--------------------------------------#
      def acessar_signin
        AcessarSigninMap.btnSignIn.click
      end

      def campo_create_an_account
        LoginRegisterMap.lbl_create_an_account.text
      end

      
      #Login Feature
      def inputLoginEmailAndPassSuccess
        file = YAML.load_file(File.join(Dir.pwd, 'features/fixtures/cadastro.yaml'))
        @cadastro = file
        LoginRegisterMap.inputLoginEmail.set(@cadastro["email"])
        LoginRegisterMap.inputLoginPassword.set(@cadastro["senha"])
      end
      
      def inputLoginEmailAndPassUnsuccessfully
        file = YAML.load_file(File.join(Dir.pwd, 'features/fixtures/cadastro.yaml'))
        @cadastro = file
        LoginRegisterMap.inputLoginEmail.set(@cadastro["WrongEmail"])
        LoginRegisterMap.inputLoginPassword.set(@cadastro["WrongPass"])
      end


      def inputSignin
        LoginRegisterMap.inputSignin.click
      end
      #End Login Feature
      
      def SubmitButton
        LoginRegisterMap.SubmitCreateButton.click
      end
    end
end