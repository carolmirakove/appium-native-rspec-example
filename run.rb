#!/usr/bin/env ruby
# frozen_string_literal: true

target = ARGV.shift
ENV['PLATFORM'] = target

if target == 'android'
  exec("rspec ./src/specs/home_page_spec.rb #{ARGV.join(' ')}")
elsif target == 'ios'
  exec("rspec ./src/specs/home_page_spec.rb #{ARGV.join(' ')}")
else
  puts "- Invalid target: #{target}"
  puts "- Available targets are: \n  * ios\n  * android\n"
end
