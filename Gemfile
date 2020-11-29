# frozen_string_literal: true
source "https://rubygems.org"

gemspec

# gem "alchemy_cms", github: "AlchemyCMS/alchemy_cms", branch: "main"
gem "alchemy_cms", path: "../alchemy_cms"

group :development, :test do
  unless ENV["TRAVIS"]
    gem "pry-byebug"
    gem "rubocop", "~> 1.1.0", require: false
    gem "listen"
    gem "rufo", require: false
  end
end
