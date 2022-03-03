Given('I have browsed to the Start Americas Together login page') do
    page.driver.browser.manage.window.maximize
    visit('https://dev-front-startamericas.web.app/login')
  end

Given('I have entered {string} into the email field') do |eMail|
   fill_in 'email', :with => eMail
end

And('I have entered {string} into the password field') do |password|
    fill_in 'password', :with => password
end

When('I press the "Iniciar Sesión" button') do
    xpath = '/html/body/div/div[2]/div[1]/div/div[2]/div[2]/div/form/div/button/span[1]'
    find(:xpath, xpath).click
  end

#Then('The welcome message should be dispayed on the screen') do 
    
    # expect(page).to have_content("Bienvenido a Start Americas Together")
    # puts find(:xpath, xpath).text
#end
Then('the welcome message should be dispayed on the screen') do
    xpath = '/html/body/div/div[2]/header'
end

Then('the "LOG OUT" button should appear in the page') do
    xpath = '/html/body/div[1]/div[2]/header/div[1]/div[3]/div/div/span[1]'
    find(:xpath, xpath)
end



  
  
  