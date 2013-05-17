source 'https://rubygems.org'

gem 'rails', '3.2.13'

gem 'unicorn'

gem 'mysql2'

# 国際化
gem 'rails-i18n'

# ユーザー認証
gem "devise"

# Deploy with Capistrano
# デプロイ
gem 'capistrano'
gem 'capistrano-ext'
gem 'capistrano_colors'
gem 'rvm-capistrano'

# Search form
gem 'ransack'

# loading spinner
gem 'spinjs-rails'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
  gem 'less'
end

gem 'jquery-rails'
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0', require: 'bcrypt'
gem 'twitter-bootstrap-rails'
gem 'less-rails'

gem 'i18n_generators'
gem 'simple_form'
gem 'kaminari'
gem "jquery_datepicker"
gem "jquery-ui-themes"

gem 'execjs'
# Javascript run time
gem 'therubyracer'
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0', require: 'bcrypt'

################################################
# テスト環境用
################################################
group :test do
  gem 'spork'
end

################################################
# テスト・開発環境用
################################################
group :test, :development do
  # Bundle edge Rails instead:
  # gem 'rails', :git => 'git://github.com/rails/rails.git'

  # sqlite
  # gem 'sqlite3'
  # mysql

  # Test
  gem 'factory_girl_rails', '~> 1.4.0'
  gem 'rails3-generators'
  gem 'rspec-rails'
  gem 'ruby_gntp'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'rb-fsevent', :require => false
  gem 'database_cleaner'

  # Deploy with Capistrano
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano_colors'
  gem 'rvm-capistrano'
end

################################################
# ステージング環境用
################################################
group :staging do
end

################################################
# 本番環境用
################################################
group :production do
end