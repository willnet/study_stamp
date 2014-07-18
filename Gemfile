source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.1.4'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'spring',        group: :development
gem 'haml-rails'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'dotenv-rails'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'quiet_assets'
  gem 'pry-rails', group: :test
  gem 'pry-remote', group: :test
  gem 'pry-byebug'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate', group: :test
  gem 'awesome_print'
  gem 'sqlite3', group: :test
end

group :test do
  gem 'rspec-rails', group: :development
  gem 'factory_girl_rails', group: :development
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_rewinder'
  gem 'launchy'
end
