# frozen_string_literal: true

module Alchemy
  module LegacyApi
    class Engine < Rails::Engine
      isolate_namespace Alchemy::LegacyApi
      engine_name "alchemy_legacy_api"
    end
  end
end
