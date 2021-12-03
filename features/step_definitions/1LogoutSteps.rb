Given(/^I'm logged on the page as voluntary$/) do 
    page.driver.browser.manage.window.maximize    
    visit 'https://testing-start.web.app/'
    xpath = '/html/body/div/header/div[1]/button'
    find(:xpath, xpath).click
    fill_in 'email', :with => 'voluntario@gmail.com' 
    fill_in 'password', :with => '123456' 
    xpath = '/html/body/div/div/div[2]/div/form/div[3]/button[1]/span[1]'
    find(:xpath, xpath).click
    sleep(3)
end

Given(/^I'm logged on the page as leader$/) do 
    page.driver.browser.manage.window.maximize    
    visit 'https://testing-start.web.app/'
    xpath = '/html/body/div/header/div[1]/button'
    find(:xpath, xpath).click
    fill_in 'email', :with => 'lider@gmail.com' 
    fill_in 'password', :with => '123456' 
    xpath = '/html/body/div/div/div[2]/div/form/div[3]/button[1]/span[1]'
    find(:xpath, xpath).click
    sleep(3)
end


Given(/^I'm logged on the page as team core$/) do 
    page.driver.browser.manage.window.maximize    
    visit 'https://testing-start.web.app/'
    xpath = '/html/body/div/header/div[1]/button'
    find(:xpath, xpath).click
    fill_in 'email', :with => 'coreteam@gmail.com' 
    fill_in 'password', :with => '123456' 
    xpath = '/html/body/div/div/div[2]/div/form/div[3]/button[1]/span[1]'
    find(:xpath, xpath).click
    sleep(3)
end

Given(/^I'm on the homepage$/) do 
    xpath = '/html/body/div/section/h1'
    expect(page).to have_content("Bienvenido a Start Americas Together")
    # puts find(:xpath, xpath).text
end


Then (/^the "([^"]*)" button should appear on the page$/) do |login|
    xpath = '/html/body/div/header/div[1]/button'
    find(:xpath, xpath, :text => login)
end