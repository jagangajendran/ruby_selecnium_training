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
  driver.get("http://magento.com")
  driver.find_element(:class_name, 'fa-user').click
  driver.find_element(:xpath,'//span[text()="Register"]').click
  driver.find_element(:id,'firstname').send_keys('Jagan')
  driver.find_element(:id,'lastname').send_keys('G')
  driver.find_element(:id, 'email_address').send_keys("jaggi.ceg07@gmail.com")
  country_select = Selenium::WebDriver::Support::Select.new(driver.find_element(:id,'country'))
  country_select.select_by(:index,10)
  company_select =  Selenium::WebDriver::Support::Select.new(driver.find_element(:id,'customer_company_type'))
  company_select.select_by(:value, "tech_partner")
  role_select =  Selenium::WebDriver::Support::Select.new(driver.find_element(:id,'customer_individual_role'))
  role_select.select_by(:index, 1)

  driver.find_element(:id, 'password').send_keys("Jack@2020")
  driver.find_element(:id, 'confirmation').send_keys("Jack@2020")

  puts driver.find_element(:tag_name, 'h1').text
  puts driver.title
  puts driver.current_url

  driver.switch_to.frame(driver.find_element(:xpath,'//iframe[@role="presentation"]'))
  driver.action.move_to(driver.find_element(:class_name,'recaptcha-checkbox-border')).click.perform
  puts driver.find_element(:tag_name, 'label').text
  driver.switch_to.default_content

  unless driver.find_element(:id,'agree_terms').selected?
    driver.find_element(:id,'agree_terms').click

  end
  driver.find_element(:id, 'registerSubmit').click

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
  driver.save_screenshot("testScreenshot.png")

ensure
  driver.quit
end
