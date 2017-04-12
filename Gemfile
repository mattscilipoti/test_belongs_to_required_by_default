source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# add source for OPO's gitlab
# usage:  gem 'rails', :opo => 'forks/rails'
# git_source(:opo_gitlab){ |repo_name| "git@git.hbbl.us:#{repo_name}.git" }
# git_source(:stsci_gitlab){ |repo_name| "https://grit.stsci.edu/OPOweb/#{repo_name}.git" }

gem 'bundler', '~> 1.13'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.0.rc1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
# gem 'sass-rails', github: "rails/sass-rails"
gem 'appraisal', github: 'thoughtbot/appraisal' # master supports 'git_source'

#The rest are sorted alphabetically
gem 'acts_as_list', '> 0.9.0' # An ActiveRecord plugin for managing lists. http://swanandp.github.io/acts_as_list/
gem 'airbrake'
gem 'awesome_print', require: false # Pretty print your Ruby objects with style
# gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password
gem 'bh', '~> 1.3' # view helpers for bootstrap components. see https://fullscreen.github.io/bh/
gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.2' # Use CoffeeScript for .coffee assets and views
gem 'devise' # authentication
gem 'haml-rails'
gem 'figaro' # configuration
gem 'jbuilder', '~> 2.5' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jquery-rails' # Use jquery as the JavaScript library
gem 'jquery-ui-rails'
gem 'order_as_specified' # adds the ability to query an ActiveRecord class for results in an arbitrary order
gem 'rack-heartbeat' # provides heartbeat endpoint w/o rails render stack.
gem 'redcarpet', require: false # for markdown
# gem 'redis', '~> 3.0' # Use Redis adapter to run Action Cable in production
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'simple_form' # Forms made easy, generates as bootstrap/foundation requires
# WORKAROUND: require: false.  See config/initializers/simple_token_authentication.rb
gem 'simple_token_authentication', '~> 1.0' # Simple (but safe) token authentication with Devise.
gem 'streamio-ffmpeg', require: false # media metadata & transcoding, https://github.com/streamio/streamio-ffmpeg
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'whenever', :require => false # manages cron

# javascript assets
source 'https://rails-assets.org' do
  gem 'rails-assets-airbrake-js-client' # Airbrake JavaScript Notifier
end

group :development, :test do # not staging, ci
  gem 'selenium-webdriver'
end

group :ci, :development, :test, :staging do
  gem 'bullet'
  gem 'capybara', '~> 2.4'
  gem 'database_cleaner', require: false
  gem 'factory_girl_rails'
  gem 'phantomjs', :require => false
  gem 'poltergeist', :require => false # for headless browser testing
  gem 'pry-byebug', platform: :mri # Call 'debug', 'byebug', or 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry-rails', platform: :mri # Rails >= 3 pry initializer (enables 'reload!' and more!)
  gem 'rspec-rails', '~> 3.5'
  gem 'teaspoon-mocha'
  gem 'sandi_meter', require: false # Sandi Metz' rules
end

# Checks if a shell program exists on this system.
# Used to allow personalization without requireing all devs to install dependencies.
def shell_program_exists?(cmd)
  # redirects STDERR to /dev/null because
  #   some OS's have output when command is not found via `which` and some don't
  ! `which #{cmd} 2> /dev/null`.empty?
end

group :development do
  gem 'capistrano-figaro'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-passenger'
  # Use OPO's verison of guard-codeclimate, to only run against whole project
  # gem 'guard-codeclimate', stsci_gitlab: 'guard-codeclimate', branch: 'only_run_all', require: false
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'guard-rspec', require: false
  gem 'guard-teaspoon', require: false
  gem 'haml_lint', require: false # Tool for writing clean and consistent HAML
  gem 'listen', '~> 3.0.5'
  # GOTCHA: meta-request "hangs" passenger: https://github.com/phusion/passenger/issues/1838
  gem 'meta_request' # supports a Chrome extension for Rails development
  gem 'rails_db' # Rails Database Viewer and SQL Query Runner
  gem 'rails-erd' #  generates ERD using Graphviz
  gem 'rubocop', require: false # Ruby static code analyze
  gem 'scss_lint', require: false # Configurable tool for writing clean and consistent SCSS
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  # gem 'spring'
  # gem 'spring-commands-rspec'
  # gem 'spring-watcher-listen', '~> 2.0.0'

  # (optional) guard notifer.  If you wish to use, run `brew install terminal-notifier`
  # A conditional was used to avoid warnings that occur if this gem is simply listed (even with 'require: false')
  # We can remove conditional if notifications are a preference for all teammates,
  #   since the above listed warnings should then be headed by all.
  # install_if -> { shell_program_exists?('terminal-notifier') } do
  #   gem 'terminal-notifier-guard', require: false
  # end
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
