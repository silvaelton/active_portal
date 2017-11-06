source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'active_codhab', github: 'codhab/active_codhab', branch: 'master'

gem 'rails', '~> 5.1.2'

gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

gem 'simple_form'
gem 'slim'

gem 'pg'

group :development, :test do
  gem 'byebug'
  gem 'cpf_faker'
  gem 'faker'
  gem 'rubocop', require: false
  gem 'simplecov', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
end
