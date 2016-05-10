source 'https://rubygems.org'
ruby '2.2.5'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'select2-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# User carrierwave for image uploads
gem 'carrierwave'
gem 'rmagick'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Heroku armor
gem 'exception_handler', '~> 0.4'
gem 'responders', '~> 2.0'

# Use Puma for a server
gem 'puma'

group :development do
  gem 'sqlite3'
  gem 'better_errors'
  gem 'meta_request'
  gem 'quiet_assets'
  gem 'guard'
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'rack-livereload'
  gem 'rack-mini-profiler'
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails', '~> 4.5'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem 'pry-rails'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'selenium-webdriver'
  gem 'awesome_print', '~> 1.6.0', require: 'ap'
end

group :test do
  gem 'capybara'
  gem 'launchy'
  gem 'shoulda-matchers' 
  gem 'guard-rspec'
  gem 'database_cleaner'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

