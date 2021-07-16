# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "yandex_direct_client/version"

Gem::Specification.new do |s|
  s.name        = "yandex_direct_client"
  s.version     = YandexDirectClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Kurchevskiy Aleksandr"]
  s.email       = ["kurchevskiy.aleksandr@yandex.com"]
  s.homepage    = "https://github.com/akurchevskiy/yandex_direct_client"
  s.summary     = "Client for Yandex.Direct"
  s.description = "Client for Yandex.Direct."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
