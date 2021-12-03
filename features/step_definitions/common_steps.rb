Given(/^I'm on the "Start Americas Together" homepage$/) do
    page.driver.browser.manage.window.maximize    
    visit 'https://testing-start.web.app/'
end





Given(/^I'm logged on the "Start Americas Together" page$/) do
    page.driver.browser.manage.window.maximize    
    visit 'https://testing-start.web.app/'
    xpath = '/html/body/div/header/div[1]/button'
    find(:xpath, xpath).click
    fill_in 'email', :with => 'voluntario@gmail.com' 
    fill_in 'password', :with => '123456' 
    xpath = '/html/body/div/div/div[2]/div/form/div[3]/button[1]/span[1]'
    find(:xpath, xpath).click
end



Given(/^I'm on the "([^"]*)" view$/) do  |button_name|
    sleep(4)
    click_button(button_name)
end



When(/^I click on the button "([^"]*)"$/) do |button_name|
    # xpath = '/html/body/div/div/div[2]/form/div[2]/div[5]/input'
    click_button(button_name)
end


When(/^I click on the form button "([^"]*)"$/) do |button_name|
    # xpath = '/html/body/div/div/div[2]/form/div[2]/div[5]/input'
    xpath = find('form')
    xpath.click_button(button_name)
    sleep(2)
end
