source 'https://rubygems.org'
ruby '2.1.5'

gem 'rails', '4.1.4'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development
gem 'activeadmin', :github=>"gregbell/active_admin"
gem 'devise'
gem 'bootstrap-sass'
gem 'haml-rails'
gem 'omniauth'
gem 'omniauth-frontdesk', '~> 0.0.1'
gem 'pg'
gem 'simple_form'
gem 'unicorn'
gem 'unicorn-rails'
gem 'rails_config'
gem 'rollbar', '~> 1.2.6'

gem 'newrelic_rpm'
gem 'health_check'

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'foreman'
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'letter_opener'
  gem 'bullet'
  gem 'annotate', git: 'git://github.com/ctran/annotate_models.git'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-rescue'
end
