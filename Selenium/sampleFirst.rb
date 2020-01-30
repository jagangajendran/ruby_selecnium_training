=begin
#Try Catch (begin,rescue,ensure)

require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = "/Users/natarajan/Documents/drivers/chromedriver"

Selenium::WebDriver::Driver.class_eval do
  def quit
    puts "end of browser"
  end
end

Selenium::WebDriver::Chrome::Service.class_eval do
  def stop
    puts "end of chrome service"
  end
end

driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout: 30)
driver.manage.window.resize_to(50,50)
driver.manage.window.move_to(50,50)
driver.manage.window.maximize
driver.manage.timeouts.implicit_wait = 30
driver.get "http://magento.com"
driver.manage.new_window(:tab)
puts driver.current_url
puts driver.title
wait.until {driver.find_element(:class_name,'fa-user').displayed?}
driver.find_element(:class_name,'fa-user').click
driver.find_element(:xpath,'//span[text()="Register"]').click
driver.find_element(:id,'firstname').send_keys('Natarajan')
country_select = Selenium::WebDriver::Support::Select.new(driver.find_element(:id,'country'))
country_select.select_by(:index,10)
unless driver.find_element(:id,'agree_terms').selected?
  driver.find_element(:id,'agree_terms').click
end
driver.switch_to.frame(driver.find_element(:xpath,'//iframe[@role="presentation"]'))
driver.action.move_to(driver.find_element(:class_name,'recaptcha-checkbox-border')).click.perform
driver.switch_to.default_content

handles = driver.window_handles
puts handles
driver.switch_to.window handles[1]
driver.get "http://google.com"
=end
