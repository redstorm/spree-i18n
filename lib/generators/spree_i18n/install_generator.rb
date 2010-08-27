module SpreeI18n
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Installs Spree's translation (i18n) files"

      def copy_public
        directory "public"
      end
    end
  end
end
