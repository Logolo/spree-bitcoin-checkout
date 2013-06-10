# coding: utf-8
require File.expand_path('../lib/spree_bitcoin_checkout/version', __FILE__)

Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'spree_bitcoin_checkout'
  s.version      = SpreeBitcoinCheckout::VERSION.dup
  s.summary      = 'Automatically integrate bitcoin-central.net\'s API'
  s.description  = 'Leverages the invoicing API in order to seamlessly accept bitcoin denominated payments'
  s.required_ruby_version = '>= 1.9.3'

  s.author       = 'David Francois'
  s.email        = 'david@bitcoin-central.net'
  s.homepage     = 'https://github.com/futhr/spree_bitcoin_checkout'
  s.license      = 'BSD'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '~> 2.1.0.beta'
  s.add_runtime_dependency 'spree_core', spree_version
  s.add_runtime_dependency 'spree_frontend', spree_version
  s.add_runtime_dependency 'spree_backend', spree_version
  s.add_runtime_dependency 'spree_api', spree_version

  s.add_runtime_dependency 'json', '~> 1.8.0'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails', '~> 2.13'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3', '~> 1.3.7'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'i18n-spec', '~> 0.4.0'
  s.add_development_dependency 'fuubar', '>= 0.0.1'
  s.add_development_dependency 'pry'
end
