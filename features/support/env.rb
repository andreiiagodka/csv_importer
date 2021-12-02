require 'cucumber/rails'
require 'sidekiq/testing'

include FactoryBot::Syntax::Methods

Sidekiq::Testing.inline!

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.clean_with(:deletion)
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it.'
end

Cucumber::Rails::Database.javascript_strategy = :truncation
