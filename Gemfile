source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'kaminari'
gem 'bootstrap4-kaminari-views'
gem 'tinymce-rails'
gem 'devise-bootstrap-views', '~> 1.0'
gem 'bootstrap'
gem 'bootstrap_form', '>= 4.0.0.alpha1'
gem 'pry-rails'
gem 'rails', '~> 5.0.7'
gem 'puma', '~> 3.0'
gem 'devise'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  gem 'byebug', platform: :mri
  gem 'sqlite3'
end

group :development do
  gem 'rails_db'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  # gem 'pg'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
