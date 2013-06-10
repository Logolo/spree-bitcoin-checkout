module SpreeBitcoinCheckout
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_bitcoin_checkout'

    config.autoload_paths += %W(#{config.root}/lib)

    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      # Billing::BitcoinCheckout.register

      Spree::CheckoutController.class_eval do
        include Spree::BitcoinCheckout
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
