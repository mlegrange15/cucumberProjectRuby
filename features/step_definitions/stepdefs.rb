require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome

Given ("I am on google.com") do
    driver.navigate.to "https://www.google.com"
    driver.find_element(name:"q")
end

When(/^I add a "(.*?)" term to the search field$/) do |search|
    element = driver.find_element(name: 'q')
    element.send_keys search
end

When("click search") do
    element = driver.find_element(name: 'btnK')
    element.submit
end

Then("I should be displayed with results that have links to matching websites") do
    driver.find_element(css:"div.r > a[href]")
end

Then("I get a message there were no matching websites found") do
    driver.find_element(xpath:"//*[text()[contains(.,'did not match')]]")
end
