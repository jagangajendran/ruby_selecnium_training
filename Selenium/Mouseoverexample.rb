require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = 'E:/Boeing/Selenium/chromedriver.exe'

driver= Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout: 10)

begin
  driver.manage.window.maximize
  driver.manage.timeouts.implicit_wait=10
  driver.get("http://magento.com")
  driver.action.move_to(driver.find_element(:partial_link_text, 'Products')).perform
  # driver.find_element(:id, 'i-icon-profile').click
  # driver.find_element(:id, 'signInLink').click
  puts driver.find_element(:tag_name, 'h1').text
  puts driver.title
  puts driver.current_url
  driver.action.move_to(driver.find_element(:partial_link_text, 'Products')).perform
  driver.action.move_to(driver.find_element(:partial_link_text, 'Solutions')).perform
  puts driver.title
=begin
  driver.switch_to.frame(driver.find_element(:xpath,'//iframe[@class="modalIframe"]'))
  driver.action.move_to(driver.find_element(:id,'mobileNoInp')).send_keys('9094934429')
  driver.action.move_to(driver.find_element(:class_name,'otpContainer')).click
  puts driver.find_element(:tag_name, 'label').text
  driver.switch_to.default_content
=end

rescue
  driver.save_screenshot(",mouseoverScreenshot.png")

ensure
  driver.quit
end