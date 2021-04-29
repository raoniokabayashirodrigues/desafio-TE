# frozen_string_literal: true

# Responsavel pelo mapeamento da pagina de registro e login
module LoginRegisterMap
    class << self

      def lbl_create_an_account
        Capybara.find('#create-account_form h3.page-subheading')
      end
      
      def set_email
        Capybara.find('#email_create')
      end
      
      # -----------------------------------
      # Login Feature
      def inputLoginEmail
        Capybara.find("#email")
      end

      def inputLoginPassword
        Capybara.find("#passwd")
      end
      
      def inputSignin
        Capybara.find("#SubmitLogin")
      end
      # end Login Feature
      # -----------------------------------
      

      def SubmitCreateButton
        Capybara.find("#SubmitCreate")
      end


    end
end