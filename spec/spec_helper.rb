# frozen_string_literal: true

require "simplecov"
SimpleCov.start "rails" do
  add_filter "/lib/alchemy/api/version"
end

require "rspec/core"

RSpec.configure do |config|
  config.raise_errors_for_deprecations!
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
end
