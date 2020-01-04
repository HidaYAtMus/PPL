require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

Given("open the website") do
    driver.navigate.to "https://www.seleniumeasy.com/test/"
    sleep(3)
  end
  
  Then("user click input form") do
    driver.find_element(:link_text, 'Input Forms').click
    sleep(3)
  end

  Then("user click simple form demo") do
    driver.find_element(:link_text, 'Simple Form Demo').click
    sleep(3)
  end

  Then("user click user message") do
    driver.find_element(:id, 'user-message').click
    sleep(3)
  end

  Then("user input user message") do
    driver.find_element(:id, 'user-message').send_keys('selenium')
    sleep(3)
  end

  Then("user click btn2") do
    driver.find_element(:css, '.btn:nth-child(2)').click
    sleep(3)
  end


  Then("user click sum1") do
    driver.execute_script("window.scrollBy(0,500)");
    sleep(3)
    driver.find_element(:id, 'sum1').click
    sleep(3)
  end

  Then("user input sum1") do
    driver.find_element(:id, 'sum1').send_keys('2')
    sleep(3)
  end

  Then("user click sum2") do
    driver.find_element(:id, 'sum2').click
    sleep(3)
  end

  Then("user input sum2") do
    driver.find_element(:id, 'sum2').send_keys('4')
    sleep(3)
  end

  Then("user click btn3") do
    driver.find_element(:css, '.btn:nth-child(3)').click
    sleep(3)
  end

  Then("user click input form2") do
    driver.find_element(:link_text, 'Input Forms').click
    sleep(3)
  end

  Then("user click simple form demo2") do
    driver.find_element(:link_text, 'Simple Form Demo').click
    sleep(3)
  end

  Then("user click sum3") do
    driver.execute_script("window.scrollBy(0,500)");
    sleep(1)
    driver.find_element(:id, 'sum1').click
    sleep(3)
  end

  Then("user input sum3") do
    driver.find_element(:id, 'sum1').send_keys('a')
    sleep(1)
  end

  Then("user click sum4") do
    driver.find_element(:id, 'sum2').click
    sleep(3)
  end

  Then("user input sum4") do
    driver.find_element(:id, 'sum2').send_keys('9')
    sleep(3)
  end

  Then("user click btn4") do
    driver.find_element(:css, '.btn:nth-child(3)').click
    sleep(3)
  end

  
  Then("user click sliders") do
    driver.find_element(:link_text, 'Progress Bars').click
    sleep(1)
    driver.find_element(:link_text, 'Drag & Drop Sliders').click
    sleep(3)
  end

  Then("user use sliders") do
    element = driver.find_element(:name, 'range')
    driver.action.move_to(element).click_and_hold.perform
    element = driver.find_element(:name, 'range')
    driver.action.move_to(element).perform
    element = driver.find_element(:name, 'range')
    driver.action.move_to(element).release.perform
    driver.find_element(:name, 'range').send_keys('100')
    driver.find_element(:name, 'range').click
    sleep(2)
    element = driver.find_element(:name, 'range')
    driver.action.move_to(element).click_and_hold.perform
    element = driver.find_element(:name, 'range')
    driver.action.move_to(element).perform
    element = driver.find_element(:name, 'range')
    driver.action.move_to(element).release.perform
    driver.find_element(:name, 'range').send_keys('25')
    driver.find_element(:name, 'range').click
    sleep(3)
  end

  Then("user click others") do
    driver.find_element(:link_text, 'Others').click
    sleep(1)
    driver.find_element(:link_text, 'Drag and Drop').click
    sleep(3)
  end

  Then("user click others1") do
    dragged = driver.find_element(:css, '#todrag > span:nth-child(2)')
    dropped = driver.find_element(:id, 'mydropzone')
    driver.action.drag_and_drop(dragged, dropped).perform
    sleep(2)
  end

  Then("user click input form submit") do
    driver.find_element(:link_text, 'Input Forms').click
    sleep(1)
    driver.find_element(:link_text, 'Input Form Submit').click
    sleep(2)
  end

  Then("user fill form") do
    driver.find_element(:name, 'first_name').click
    sleep(1)
    driver.find_element(:name, 'first_name').send_keys('mus')
    sleep(1)
    driver.find_element(:name, 'last_name').click
    sleep(1)
    driver.find_element(:name, 'last_name').send_keys('mus')
    sleep(1)
    driver.find_element(:name, 'email').click
    sleep(1)
    driver.find_element(:name, 'email').send_keys('mus@g.com')
    sleep(1)
    driver.find_element(:name, 'phone').send_keys('09887')
    sleep(1)
    driver.find_element(:name, 'address').click
    sleep(1)
    driver.find_element(:name, 'address').send_keys('malang')
    sleep(1)
    driver.find_element(:name, 'city').click
    sleep(1)
    driver.find_element(:name, 'city').send_keys('malang')
    sleep(1)
    driver.find_element(:name, 'state').click
    sleep(1)
    dropdown = driver.find_element(:name, 'state')
    sleep(1)
    dropdown.find_element(:xpath, "//option[. = 'Louisiana']").click
    sleep(1)
    driver.find_element(:name, 'state').click
    sleep(1)
    driver.find_element(:name, 'zip').click
    sleep(1)
    driver.find_element(:name, 'zip').send_keys('9889')
    sleep(1)
    driver.find_element(:name, 'website').click
    sleep(1)
    driver.find_element(:name, 'website').send_keys('er.com')
    sleep(1)
    driver.find_element(:name, 'hosting').click
    sleep(1)
    driver.find_element(:name, 'comment').click
    sleep(1)
    driver.find_element(:name, 'comment').send_keys('selenium')
    sleep(3)
  end

  Then("user click send") do
    driver.find_element(:css, '.glyphicon-send').click
    sleep(3)
  end

  Then("user click radio buttons") do
    driver.find_element(:link_text, 'Input Forms').click
    sleep(1)
    driver.find_element(:link_text, 'Radio Buttons Demo').click
    sleep(3)
  end

  Then("user click radio inline") do
    driver.find_element(:css, '.panel-body > .radio-inline:nth-child(2)').click
    sleep(1)
    driver.find_element(:id, 'buttoncheck').click
    sleep(5)
  end