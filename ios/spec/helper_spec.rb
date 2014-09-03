require 'rubygems'
require 'bundler'

Bundler.require(:test_frameworks)

caps = Appium.load_appium_txt file: File.join(Dir.pwd, '../appium.txt')

RSpec.configure do |config|

  config.before(:each) do
    @driver = Appium::Driver.new(caps)
    @driver.start_driver
  end

  config.after(:each) do
    @driver.driver_quit
  end

end
