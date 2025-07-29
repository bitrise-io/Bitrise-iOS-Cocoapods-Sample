# frozen_string_literal: true

source "https://rubygems.org"

# gem "rails"

gem "cocoapods", "~> 1.12"

# Add nkf for Ruby 3.4+ since some encoding libraries are no longer included by default
if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new("3.4.0")
  gem "nkf"
  gem "base64"
end
