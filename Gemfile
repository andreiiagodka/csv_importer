source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

# Database
gem 'pg', '~> 1.2.3'

# Trailblazer
gem 'trailblazer-rails', '~> 2.1.7'

# Dry-rb
gem 'dry-validation', '~> 1.6.0'

# Reform
gem 'reform', '~> 2.6.0'
gem 'reform-rails', '~> 0.2.2'

# Money
gem 'money-rails', '~>1.12'

# Background jobs
gem 'sidekiq', '~> 6.2.1'

# Views
gem 'slim-rails', '~> 3.3.0'

# Cells
gem 'cells-erb', '~> 0.1.0'
gem 'cells-rails', '~> 0.0.6'
gem 'cells-slim', '~> 0.1.1'
gem 'trailblazer-cells', '~> 0.0.3'

# I18n
gem 'rails-i18n', '~> 6.0.0'

# Pagination
gem 'pagy', '~> 5.6'

# Simple form
gem 'simple_form', '~> 5.1.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'factory_bot_rails', '~> 6.2.0'
  gem 'faker', '~> 2.19.0'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 5.0.0'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Audit
  gem 'brakeman', '~> 5.1.1', require: false
  gem 'bundler-audit', '~> 0.9.0.1', require: false
  gem 'bundler-leak', '~> 0.2', require: false
  gem 'fasterer', '~> 0.9', require: false
  gem 'lol_dba', '~> 2.2', require: false
  gem 'rails_best_practices', '~> 1.21', require: false
  gem 'rubocop-performance', '~> 1.11.5', require: false
  gem 'rubocop-rails', '~> 2.11.3', require: false
  gem 'rubocop-rspec', '~> 2.4.0', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'cucumber-rails', '~> 2.4.0', require: false
  gem 'rspec-sidekiq', '~> 3.1.0'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'simplecov', '~> 0.21.2', require: false
  gem 'webdrivers'
  gem 'database_cleaner', '~> 2.0.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
