require "selenium/webdriver"

Capybara.register_driver :selenium_chrome_in_container do |app|
  # for CircleCI
  selenium_host = ENV.fetch('SELENIUM_DRIVER_HOST', 'selenium_chrome')
  Capybara::Selenium::Driver.new app,
    browser: :remote,
    url: "http://#{selenium_host}:4444/wd/hub",
    desired_capabilities: :chrome
end
