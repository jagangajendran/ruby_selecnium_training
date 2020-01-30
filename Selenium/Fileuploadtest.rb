require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = 'E:/Boeing/Selenium/chromedriver.exe'

driver= Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout: 10)

begin
  driver.manage.window.maximize
  driver.manage.timeouts.implicit_wait=10
  driver.get("http://naukri.com")
  puts driver.find_element(:id, 'input_resumeParser').displayed?
  wait.until { driver.find_element(:id, 'input_resumeParser').displayed?}
  puts driver.find_element(:id, 'input_resumeParser').displayed?

  driver.find_element(:id, 'input_resumeParser').send_keys('E:/Boeing/Srinibas_Bangalore.pdf')
=begin
  puts driver.switch_to.alert.text
  driver.switch_to.alert.accept
  driver.find_element(:name, 'B2').click
  sleep(10)
  puts driver.switch_to.alert.text
  driver.switch_to.alert.dismiss
  driver.find_element(:name, 'B3').click
  sleep(10)
  driver.switch_to.alert.send_keys("text in alert")
  puts driver.switch_to.alert.text
  driver.switch_to.alert.accept
=end

rescue
  driver.save_screenshot(",FileScreenshot.png")

ensure
  driver.quit
end


