source 'https://rubygems.org'
ruby '2.4.1'

gem 'rails', '>= 5.0.0'

gem 'pg'
gem 'puma'

gem 'devise'
gem 'haml-rails'
gem 'jquery-rails'
gem 'sass-rails'
gem 'turbolinks'
gem 'uglifier'

gem 'friendly_id'
gem 'kaminari'
gem 'simple_form'

# SEO
gem 'meta-tags'
gem 'sitemap_generator'

gem 'sidekiq'

gem 'paperclip'
gem 'whenever', require: false

# Front-end/js stuff
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'selectize-rails'
gem 'tinymce-rails'
gem 'toastr-rails'

# 3rd-party services
gem 'rollbar'
# gem 'newrelic_rpm'

# Social/Omniauth
# gem "omniauth"
# gem "omniauth-twitter"
# gem "omniauth-facebook"
# gem "omniauth-linkedin"
# gem "koala" # facebook API
# gem "twitter"
# gem "linkedin"
# gem "instagram"

group :development, :test do
  gem 'pry-rails'

  # Code analyzers
  gem 'brakeman',             require: false
  gem 'bundler-audit',        require: false
  gem 'haml_lint',            require: false
  gem 'i18n-tasks',           require: false
  gem 'rails_best_practices', require: false
  gem 'rubocop',              require: false
  gem 'rubocop-rspec',        require: false
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console'

  gem 'letter_opener'

  # Deployment
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rails-console'
  gem 'capistrano-rbenv'
  # gem 'capistrano-sidekiq' , git: 'https://github.com/seuros/capistrano-sidekiq.git'
  gem 'capistrano3-puma', git: "https://github.com/seuros/capistrano-puma.git"
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails', require: false
  gem 'faker'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end
