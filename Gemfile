source 'https://rubygems.org'

ruby '2.3.0'

gem 'rails', github: "rails/rails"

# DB
gem 'pg', '~> 0.18'

# Server
gem 'puma'

# JS
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'

# Styles
gem 'normalize-rails'
gem 'sass-rails', '~> 5.0'
gem 'bourbon'
gem 'flutie'
gem 'clrs'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.5.0.beta1'
  gem 'capybara'
  gem 'capybara-webkit'
end

group :development do
  gem 'web-console', github: 'rails/web-console'
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
end