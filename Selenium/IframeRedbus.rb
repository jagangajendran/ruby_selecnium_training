
require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = 'E:/Boeing/Selenium/chromedriver.exe'

driver= Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout: 10)

=begin
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
=end
begin
  driver.manage.window.maximize
  driver.manage.timeouts.implicit_wait=10
  driver.get("http://redbus.com")
  driver.find_element(:id, 'go').click
  # if driver.find_element(:id,'stay')
  #   driver.find_element(:id, 'stay').click
  # end
  driver.find_element(:id, 'i-icon-profile').click
  driver.find_element(:id, 'signInLink').click
  puts driver.find_element(:tag_name, 'h1').text
  puts driver.title
  puts driver.current_url

  driver.switch_to.frame(driver.find_element(:xpath,'//iframe[@class="modalIframe"]'))
  driver.action.move_to(driver.find_element(:id,'mobileNoInp')).send_keys('9094934429')
  driver.action.move_to(driver.find_element(:class_name,'otpContainer')).click
  puts driver.find_element(:tag_name, 'label').text
  driver.switch_to.default_content

=begin
  if driver.find_element(:id, 'advice-validate-password-password')
    puts "Password is not meeting the validation "
  else

    puts "Regitration is sucessful"
  end
=end


    # first_result = wait.until { driver.find_element(css: 'h3>div') }
    # puts first_result.attribute('textContent')
rescue
  driver.save_screenshot("redbusScreenshot.png")

ensure
  driver.quit
end

