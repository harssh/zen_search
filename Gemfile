# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
ruby '2.5.1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'puma', '~> 4.3'
gem 'rails', '~> 5.2.3'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate'
gem 'will_paginate-bootstrap4'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'overcommit'
  gem 'travis'
end
group :development do
  gem 'annotate'
  gem 'brakeman', require: false
  gem 'bundler-audit'
  gem 'fasterer'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails_best_practices'
  gem "rubycritic", require: false
  gem 'spec_writer'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end
group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end
gem "bootstrap", ">= 4.3.1"
gem 'high_voltage'
gem 'jquery-rails'
gem 'mysql2', '~> 0.5.2'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
group :development do
  gem 'better_errors'
  gem 'rails_layout'
  gem 'rails-erd'
  gem 'spring-commands-rspec'
end
group :development, :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
  gem 'rubocop'
end
group :test do
  gem 'database_cleaner'
  gem 'launchy'
end
