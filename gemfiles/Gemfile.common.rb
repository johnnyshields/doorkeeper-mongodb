# frozen_string_literal: true

source "https://rubygems.org"

gemspec path: "../"

gem "rails", "~> #{ENV.fetch("RAILS", "5.0")}"
gem "doorkeeper", "~> #{ENV.fetch("DOORKEEPER", ".5.0")}"
gem "bcrypt"

gem "rspec-core"
gem "rspec-expectations"
gem "rspec-mocks"
gem "rspec-rails", "~> 4.0.0"
gem "rspec-support"
