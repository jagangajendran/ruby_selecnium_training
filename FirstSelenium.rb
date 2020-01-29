require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = 'E:/Boeing/Selenium/chromedriver.exe'

driver= Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout: 10)
begin
  driver.manage.window.maximize
  driver.manage.timeouts.implicit_wait=30
  driver.get("http://magento.com")
  driver.find_element(:class_name, 'fa-user').click
  driver.find_element(:id, 'email').send_keys("jaggi.ceg07@gmail.com")
  driver.find_element(:id, 'pass').send_keys("Jack")
  driver.find_element(:id, 'send2').click

  if driver.find_element(:class_name, 'error-msg')
    puts "Login Error"
  else
    puts "Login Success"
  end




  # first_result = wait.until { driver.find_element(css: 'h3>div') }
  # puts first_result.attribute('textContent')

ensure
  driver.quit
end
