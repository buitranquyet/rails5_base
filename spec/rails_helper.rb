require 'simplecov'
SimpleCov.start 'rails' do
  minimum_coverage         95
  minimum_coverage_by_file 80
end

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rails'
require 'capybara/rspec'

ActiveRecord::Migration.maintain_test_schema!

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :active_record
    with.library :rails
  end
end

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include Warden::Test::Helpers

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:example) do |example|
    DatabaseCleaner.strategy = example.metadata[:type] == :feature ? :truncation : :transaction
    DatabaseCleaner.cleaning { example.run }
  end

  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.lint
      Warden.test_mode!
    ensure
      DatabaseCleaner.clean
    end
  end
end
