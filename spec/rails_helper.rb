# frozen_string_literal: true

require_relative "./spec_helper"

# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require_relative("dummy/config/environment.rb")

require "rspec/rails"

require "alchemy/seeder"
require "alchemy/test_support/config_stubbing"
require "alchemy/test_support/integration_helpers"
require "alchemy/test_support/factories"

Alchemy::Deprecation.silenced = false

Rails.backtrace_cleaner.remove_silencers!
# Disable rails loggin for faster IO. Remove this if you want to have a test.log
Rails.logger.level = 4

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.include ActiveSupport::Testing::TimeHelpers
  config.include Alchemy::Engine.routes.url_helpers
  config.include Alchemy::TestSupport::ConfigStubbing
  [:controller, :request].each do |type|
    config.include Alchemy::TestSupport::IntegrationHelpers, type: type
  end
  config.include FactoryBot::Syntax::Methods
  config.use_transactional_fixtures = true
end
