# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'pg'
gem "sinatra" 

gem 'capybara', group: :test
gem 'rspec', group: :test

gem 'simple-line-icons-rails', '~> 0.1.3' 

group :development, :test do
  gem "rubocop", "0.79.0"
end


# included simple-line-icons.css in document head: <link rel="stylesheet" href="simple-line-icons.css" media="all" type="text/css" />