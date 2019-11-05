require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox

Given("open the website") do
    driver.navigate.to "http://inspired27.com/"
    sleep(5)
  end
  
  Then("user click contact") do
    driver.find_element(:link, 'Contact').click
    sleep(5)
  end

  Then("user click blog") do
    driver.find_element(:link, 'Blog').click
    sleep(5)
  end

  Then("user click STORES") do
    driver.find_element(:link, 'STORES').click
    sleep(5)
  end

  Then("user click SALE") do
    driver.find_element(:link, 'SALE').click
    sleep(5)
  end

  Then("user click HOW TO BUY") do
    driver.find_element(:link, 'HOW TO BUY').click
    sleep(5)
  end