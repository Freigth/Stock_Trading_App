source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'cancancan'
gem 'pry'
gem 'iex-ruby-client'
gem 'devise'
gem 'bootstrap', '~> 5.2.0'
gem 'devise-bootstrap-views'
gem "font-awesome-sass"
gem 'jquery-rails'


group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'dotenv-rails'
end

group :development do
  gem "web-console"
end

group :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem "selenium-webdriver"
  gem "webdrivers"
end
