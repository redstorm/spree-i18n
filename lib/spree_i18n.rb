require 'spree_core'
require 'spree_i18n_hooks'

module SpreeI18n
  class Engine < Rails::Engine

    initializer 'engine.helper' do |app|
      ActionView::Base.send :include, SpreeI18nHelper
    end

    def self.activate
    end

    config.to_prepare &self.activate
  end
end
