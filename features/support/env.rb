# frozen_string_literal: true

require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'

Capybara.register_driver :site_prism do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.configure do |config|
  Capybara.default_driver = :site_prism
  Capybara.page.current_window.resize_to(1280, 720)
  config.run_server = false
  config.default_max_wait_time = 10
  config.app_host = 'http://automationpractice.com'
end
