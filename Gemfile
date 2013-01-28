source 'https://rubygems.org'

gem 'rails', '3.2.2'
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
  gem 'mysql2'
  # 国際化
  gem 'rails-i18n'
  # パンくずリスト対応
  gem 'crummy'
  # ユーザー認証
  gem "devise"
  # Deploy with Capistrano
  gem 'rvm-capistrano'
  # Search form
  gem 'ransack'

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

  # Amazon AWS
  gem 'aws-ses'
end

################################################
# ステージング環境用
################################################
group :staging do
  gem 'rails', '3.2.2'
  # Bundle edge Rails instead:
  # gem 'rails', :git => 'git://github.com/rails/rails.git'
  # mysql
  gem 'mysql2'
  # 国際化
  gem 'rails-i18n'
  #  ページング
  gem 'will_paginate', '~> 3.0'
  # パンくずリスト対応
  gem 'crummy'
  # ユーザー認証
  gem "devise"
  # KVMコントロール
  gem 'ruby-libvirt'
  # Gems used only for assets and not required
  # in production environments by default.
  group :assets do
    gem 'sass-rails',   '~> 3.2.3'
    gem 'coffee-rails', '~> 3.2.1'

    # See https://github.com/sstephenson/execjs#readme for more supported runtimes
    gem 'therubyracer'

    gem 'uglifier', '>= 1.0.3'
  end
  gem 'jquery-rails'

  # Deploy with Capistrano
  gem 'rvm-capistrano'
  gem 'execjs'
  # Javascript run time
  gem 'therubyracer'
  # To use ActiveModel has_secure_password
  gem 'bcrypt-ruby', '~> 3.0.0', require: 'bcrypt'
end

################################################
# 本番環境用
################################################
group :production do
  gem 'mysql2'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

