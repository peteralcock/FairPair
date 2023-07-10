source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.4"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.6"
gem "devise"
gem "httparty"
gem 'administrate'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end


group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'bullet'
  gem 'lol_dba'
  gem 'benchmark-ips'
  #   gem 'derailed'
  #   gem 'stackprof'
  #   gem 'method_profiler'
  #   gem 'database_cleaner'
  #   gem 'serverspec'
end

group  :development do
  gem "web-console"
  gem 'spring', group: :development
  gem 'pry-rails'
  gem 'web-console', group: :development
  gem 'guard', require: false
  gem 'spork', require: false
  gem 'guard-rails'
  gem 'guard-sidekiq'
  gem 'guard-rspec'
  gem 'guard-bundler'

end

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdriver'
  gem 'timecop'
  gem 'listen'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'ffaker'
  gem 'factory_bot_rails'
  gem 'better_errors'
  gem 'fuubar'
  gem 'growl'

  # gem 'letter_opener'
  # gem 'letter_opener_web'

end


# EXPERIMENTAL
# gem 'sidekiq'
# gem 'chartkick'
# gem 'hightop'
# gem 'groupdate'
# gem 'by_star'
# gem 'searchkick'
# gem 'mailkick'
# gem 'searchjoy'
# gem 'redis-objects'
# gem 'errbit'
#
# DEPLOYMENT
#   gem 'capistrano'
#   gem 'capistrano-rvm'
#   gem 'capistrano-bundler'
#   gem 'capistrano-rails'
#   gem 'capistrano-sidekiq' # , github: 'seuros/capistrano-sidekiq'
#   gem 'capistrano-rails-console'
#   gem 'capistrano-composer'
#
# SAASIFICATION
# gem 'apartment'
# gem 'apartment-sidekiq'