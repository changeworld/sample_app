source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.9'
# Use Bootstrap
gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets', '2.11.0'
gem 'bcrypt-ruby', '3.1.5'
gem 'faker', '1.1.2'
gem 'will_paginate', '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'

# Use pg as the database for Active Record for Heroku
gem 'pg', '0.15.1'

# Use Rspec for Test
group :development, :test do
  gem 'rspec-rails', '2.13.1'
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.5.5'
end

group :test do
  gem 'selenium-webdriver', '2.43.0'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.4.1'
  gem 'cucumber-rails', '1.4.1', require: false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
  gem 'coveralls', require: false
  gem 'metric_fu', require: false
  gem 'rubocop', require: false
end

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.4.1', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
  gem 'rails_12factor', '0.0.2'
end
