# frozen_string_literal: true

module Alchemy
  module LegacyApi
    VERSION = "5.1.0.rc1"

    def self.version
      VERSION
    end

    def self.gem_version
      Gem::Version.new(VERSION)
    end
  end
end
