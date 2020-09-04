source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'jbuilder', '~> 2.7'
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-google'
gem 'omniauth-twitter'
gem 'pg', '1.2.2'
gem 'puma', '~> 4.3.1'
gem 'rails', '~> 6.0.3'
gem 'rest-client'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_cleaner'
  gem 'dotenv-rails'
  gem "factory_bot_rails", git: "http://github.com/thoughtbot/factory_bot_rails"
  gem 'rspec-rails'
end

group :development do
  gem "fuubar"
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'listen', '>= 3.0.5', '< 3.3'
  gem 'pry'
  gem "rubocop"
  gem "rubocop-rails", require: false
  gem "rubocop-rspec"
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'webdrivers'
end

group :production do
  gem 'aws-sdk-s3', require: false
  gem 'thin'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
