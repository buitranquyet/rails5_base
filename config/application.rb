require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Niemdamme
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.time_zone = 'Hanoi'
    config.i18n.default_locale = :en

    config.active_job.queue_adapter = :sidekiq

    config.generators do |g|
      g.template_engine :haml
      g.test_framework :rspec, fixture: false
    end
  end
end
