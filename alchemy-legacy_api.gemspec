# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "alchemy/legacy_api/version"

Gem::Specification.new do |gem|
  gem.name = "alchemy-legacy_api"
  gem.version = Alchemy::LegacyApi::VERSION
  gem.platform = Gem::Platform::RUBY
  gem.authors = ["Thomas von Deyen"]
  gem.email = ["hello@alchemy-cms.com"]
  gem.homepage = "https://alchemy-cms.com"
  gem.summary = "Legacy AlchemyCMS API"
  gem.description = "The legacy API for AlchemyCMS"
  gem.required_ruby_version = ">= 2.3.0"
  gem.license = "BSD-3-Clause"
  gem.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^spec/}) }
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "active_model_serializers", ["~> 0.10.0"]
  gem.add_runtime_dependency "alchemy_cms", [">= 5.1.0.rc1", "< 6"]
  gem.add_runtime_dependency "responders", [">= 2.0", "< 4.0"]

  gem.add_development_dependency "factory_bot_rails", ["~> 6.0"]
  gem.add_development_dependency "puma", ["~> 5.0"]
  gem.add_development_dependency "rspec-activemodel-mocks", ["~> 1.0"]
  gem.add_development_dependency "rspec-rails", ["~> 4.0"]
  gem.add_development_dependency "simplecov", ["~> 0.17.1"]
  gem.add_development_dependency "sqlite3", ["~> 1.4"]
  gem.add_development_dependency "timecop", ["~> 0.9"]
end
