source 'https://rubygems.org'
ruby '2.3.3'

gem 'rails', '>= 5.0.0'

gem 'pg'
gem 'puma'

gem 'sass-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'turbolinks'
gem 'haml-rails'
gem 'devise'

gem 'simple_form'
gem 'kaminari'
gem 'friendly_id'

# SEO
gem 'sitemap_generator'
gem 'meta-tags'

gem 'sidekiq'

gem 'paperclip'
gem 'whenever', require: false

# Front-end/js stuff
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'toastr-rails'
gem 'selectize-rails'
gem 'tinymce-rails'

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
  gem 'i18n-tasks',           require: false
  gem 'rails_best_practices', require: false
  gem 'rubocop',              require: false
  gem 'rubocop-rspec',        require: false
  gem 'haml_lint',            require: false
  gem 'bundler-audit',        require: false
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

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
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails', require: false
  gem 'database_cleaner'
  gem 'capybara'
  gem 'simplecov', require: false
  gem 'faker'
end
