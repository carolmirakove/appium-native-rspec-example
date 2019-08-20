# frozen_string_literal: true

require 'rubygems'
require 'bundler'

Bundler.require(:test_frameworks)

caps = Appium.load_appium_txt file: File.join(
  Dir.pwd, "src/#{ENV['PLATFORM']}/appium.txt"
)

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation

  config.before(:each) do
    @driver = Appium::Driver.new(caps, true)
    @driver.start_driver

    Dir[ "./src/#{ENV['PLATFORM']}/pages/*.rb"].each { |f| require f }
  end

  config.after(:each) do
    @driver.driver_quit
  end
end
