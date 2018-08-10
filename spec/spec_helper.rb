# frozen_string_literal: true

require 'bundler'
require 'rom-mongo'

begin
  require 'byebug'
rescue LoadError
end

Dir[File.join(File.dirname(__FILE__), 'shared', '**/*.rb')].each { |f| require f }

MONGO_URI = 'mongodb://127.0.0.1:27017/rom_mongo'.freeze
Mongo::Logger.logger = Logger.new(nil)

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:suite) do
    ::Mongo::Client.new(MONGO_URI).database.drop
  end
end
