# development

## Prerequisites

Building a Jekyll site following: https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll


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

Create the jekyll site in the docs directory
```dtd
mkdir docs
cd docs
bundle config set --local path '../vendor/bundle'
bundle install
```

## Local testing 
https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll

```bash
cd docs
bundle exec jekyll serve
```