# frozen_string_literal: true
source "https://rubygems.org"

gemspec

gem "alchemy_cms", path: "AlchemyCMS/alchemy_cms", branch: "split-out-legacy-api"

group :development, :test do
  unless ENV["TRAVIS"]
    gem "pry-byebug"
    gem "rubocop", "~> 1.1.0", require: false
    gem "listen"
    gem "rufo", require: false
  end
end
