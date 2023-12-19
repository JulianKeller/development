# development

## Prerequisites
Install Ruby 

Install Bundler

```bash
echo "source 'https://rubygems.org'
gem 'nokogiri'
gem 'rack', '~> 2.2.4'
gem 'rspec'" > Gemfile
# set the bundle config 
bundle config set --local path 'vendor/bundle'
bundle install
git add Gemfile Gemfile.lock
```