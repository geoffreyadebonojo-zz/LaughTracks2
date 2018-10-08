ENV['RACK_ENV'] = 'test'

require 'bundler'
require 'simplecov'
require 'capybara/dsl'

SimpleCov.start

Bundler.require(:default, :test)
require File.expand_path('../../config/environment.rb', __FILE__)

Capybara.app = LaughTracks # name of application class
Capybara.save_path = 'tmp/capybara' # if you
# don't specify path

DatabaseCleaner.strategy = :truncation

RSpec.configure do |c|
  c.before(:all) do
    DatabaseCleaner.clean
  end
  c.after(:each) do
    DatabaseCleaner.clean
  end
  c.include Capybara::DSL
end