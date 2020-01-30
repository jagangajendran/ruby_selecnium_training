require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = 'E:/Boeing/Selenium/chromedriver.exe'

driver= Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(timeout: 10)

begin
  driver.manage.window.maximize
  driver.manage.timeouts.implicit_wait=10
  driver.get("http://google.com")
  driver.find_element(:link_text, 'Gmail').click
  driver.find_element(:link_text, 'Sign in').click
  handles =driver.window_handles
  driver.switch_to.window handles[1]
  driver.find_element(:name, 'identifier').send_keys("jaganautomation@gmail.com")
  driver.action.key_down(:enter).key_up(:enter).perform
  driver.find_element(:name, 'password').send_keys("Jack@automation")
  driver.action.key_down(:enter).key_up(:enter).perform
  driver.action.drag_and_drop(driver.find_element(:class_name, 'zA'), driver.find_element(:link_text, 'dropLabel'))


  #driver.action.move_to(driver.find_element(:partial_link_text, 'Products')).perform
  # driver.find_element(:id, 'i-icon-profile').click
  # driver.find_element(:id, 'signInLink').click
  puts driver.find_element(:tag_name, 'h1').text
  puts driver.title
  puts driver.current_url
    # driver.action.move_to(driver.find_element(:partial_link_text, 'Products')).perform

=begin
  driver.switch_to.frame(driver.find_element(:xpath,'//iframe[@class="modalIframe"]'))
  driver.action.move_to(driver.find_element(:id,'mobileNoInp')).send_keys('9094934429')
  driver.action.move_to(driver.find_element(:class_name,'otpContainer')).click
  puts driver.find_element(:tag_name, 'label').text
  driver.switch_to.default_content
=end

rescue
  driver.save_screenshot(",GmailScreenshot.png")

ensure
  driver.quit
end
