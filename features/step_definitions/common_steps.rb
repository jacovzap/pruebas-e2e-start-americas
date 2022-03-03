Given('I have browsed to the Start Americas Together home page') do
    page.driver.browser.manage.window.maximize
    visit('https://dev-front-startamericas.web.app')
end

Given('I am logged in the Start Americas Together page') do
    page.driver.browser.manage.window.maximize    
    visit 'https://dev-front-startamericas.web.app/login'
    fill_in 'email', :with => 'lider.auxiliar@start.auxiliar.com' 
    fill_in 'password', :with => 'lideraux1' 
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button/span[1]'
    find(:xpath, xpath).click
end


#iven(/^I'm on the "([^"]*)" view$/) do  |button_name|
#    sleep(4)
#    click_button(button_name)
#end


#When(/^I click on the button "([^"]*)"$/) do |button_name|
#    click_button(button_name)
#end


#When(/^I click on the form button "([^"]*)"$/) do |button_name|
#    xpath = find('form')
#    xpath.click_button(button_name)
#    sleep(2)
#end
