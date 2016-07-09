source 'http://rubygems.org'

ruby '2.3.0'
# gem 'mime-types', '~> 2.6.1', require: 'mime/types/columnar'
gem 'rails', '~> 5.0.0'
gem 'rake'
gem 'pg', '~> 0.18.3'
gem 'haml-rails', '~> 0.9.0'
gem 'devise', '~> 4.2.0'
gem 'devise-i18n'
gem 'doorkeeper'
gem 'doorkeeper-i18n'
gem 'omniauth', '~> 1.3.1'
gem 'omniauth-google-oauth2', '~> 0.2.5'
gem 'omniauth-facebook', '~> 2.0.1'
gem 'omniauth-twitter', '~> 1.2.0'
gem 'omniauth-github'
gem 'active_model_serializers', '~> 0.8.1'
gem 'private_pub', github: 'loomio/private_pub'
gem 'delayed_job', '~> 4.1.1'
gem 'delayed_job_active_record', '~> 4.1.0'
gem 'cancancan'
gem 'jstz-rails', github: 'vanetten/jstz-rails'
gem 'gravtastic'
gem 'paperclip', '~> 4.3.6'
gem 'activeadmin', '~> 1.0.0.pre4'
gem 'inherited_resources', github: 'activeadmin/inherited_resources'
gem 'nokogiri'
gem 'twitter-text'
gem 'redcarpet', '~> 3.3.4'
gem 'paper_trail', '~> 4.0.0.beta2'
gem 'rinku'
gem 'friendly_id', '~> 5.1.0'
gem 'httparty'
gem 'airbrake'
gem 'browser', '~> 1.1.0'
gem 'fog'
gem 'thin'
gem 'sequenced', '~> 2.0.0'
gem 'bing_translator'
gem 'http_accept_language'
gem 'intercom'
gem 'intercom-rails'
gem "font-awesome-sass",  '~> 4.3.2'
gem 'mail', github: 'mikel/mail'
gem 'coffee-rails'
gem 'sprockets-rails', require: 'sprockets/railtie'
gem 'uglifier', '~> 3.0.0'
gem 'bootstrap-sass', '~> 3.3.4'
gem 'sass-rails', '>= 3.2'
gem 'ruby-progressbar'
# gem 'activerecord_any_of'
gem 'rack-attack', '~> 4.4.1'
gem 'ahoy_matey', '~> 1.1.1'
gem 'ahoy_email', '~> 0.3.1'
gem 'oj'
gem 'simple-rss'
gem 'snorlax', '~> 0.1.3'
gem 'custom_counter_cache'
gem 'safe_shell'
gem 'premailer-rails', github: 'gdpelican/premailer-rails'
gem 'griddler'
gem "griddler-mailin", github: 'loomio/griddler-mailin'
gem "simple_form"

group :development, :test do
  gem 'minitest'
  gem 'timecop'
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'rspec-its'
  gem 'rspec-collection_matchers'
  gem 'rspec-activemodel-mocks'
  gem 'shoulda-matchers'
  gem 'dotenv-rails', require: 'dotenv/rails-now'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'gemrat'
end

group :development do
  gem 'sqlite3'
  gem 'derailed'
  gem "stackprof"
  gem 'spring'
  gem "spring-commands-cucumber"
  gem "spring-commands-rspec"
  gem 'bullet'
  gem 'launchy'
  gem 'awesome_print'
end

group :test do
  gem 's3_uploader'
  # gem 'cucumber-rails', require: false
  gem 'email_spec'
  gem 'poltergeist'
  gem 'webmock'
  gem "codeclimate-test-reporter", require: false
  gem 'rack_session_access'
end

group :production do
  gem 'puma'
  gem 'rails_12factor'
  gem 'rails_serve_static_assets'
  gem 'delayed-plugins-airbrake'
  gem 'dalli'
  gem 'newrelic_rpm'
  gem 'heroku-deflater'
end

Dir.glob(File.join(File.dirname(__FILE__), 'plugins', '**', "Gemfile")) do |gemfile|
  eval(IO.read(gemfile), binding)
end
