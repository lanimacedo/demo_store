# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/rspec/matchers'
require 'rspec'

require_relative 'page_helper.rb'
require_relative 'helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

HEADLESS = ENV['HEADLESS']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) +
"/data/#{ENVIRONMENT_TYPE}.yml")

Capybara.register_driver :selenium do |app|
  if HEADLESS.eql?('sem_headless')
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
          'chromeOptions' => {'args' => ['--disable-infobars', 'window-size=1600,1024'] 
        }
      )
    )
  elsif HEADLESS.eql?('com_headless')
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
          'chromeOptions' => { 'args' => [ "headless", "window-size=1280x720", "disable-gpu", '--disable-infobars'] 
        }
      )
    )
  end
end


Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 30
end

Capybara.ignore_hidden_elements = false