require 'rspec'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'capybara'

  if ENV['poltergeist']
    Capybara.default_driver = :poltergeist
    Capybara.register_driver :poltergeist do |app|
        Capybara::Poltergeist::Driver.new(app)
    end
  
   elsif ENV['firefox']
    Capybara.default_driver = :firefox
    Capybara.register_driver :firefox do |app|
        Capybara::Selenium::Driver.new(app, :browser => :firefox)
    end
  
   elsif ENV['safari']
    Capybara.default_driver = :safari
    Capybara.register_driver :safari do |app|
        Capybara::Selenium::Driver.new(app, :browser => :safari)
    end
  
   elsif ENV['opera']
    Capybara.default_driver = :opera
    Capybara.register_driver :opera do |app|
        Capybara::Selenium::Driver.new(app, :browser => :opera)
    end
  
   elsif
    Capybara.default_driver = :selenium_chrome
    
    #window = Capybara.current_session.driver.browser.manage.window
    #window.resize_to(1024, 768) # width, height
end