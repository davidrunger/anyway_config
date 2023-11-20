# frozen_string_literal: true

source 'https://rubygems.org'

group :development do
  gem 'pry-byebug'
  gem 'runger_release_assistant', require: false
end

gemspec

eval_gemfile "gemfiles/rubocop.gemfile"
eval_gemfile "gemfiles/rbs.gemfile"

local_gemfile = "#{File.dirname(__FILE__)}/Gemfile.local"

if File.exist?(local_gemfile)
  eval(File.read(local_gemfile)) # rubocop:disable Security/Eval
else
  gem 'rails', '~> 7.0'
end
