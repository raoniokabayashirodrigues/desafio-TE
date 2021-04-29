# Modulo responsavel pela interação com a pagina Homepage
module AcessarHomepageHelper
    class << self
      def load_url
        Capybara.visit(AcessarHomepageMap.url)
      end
    end
  end