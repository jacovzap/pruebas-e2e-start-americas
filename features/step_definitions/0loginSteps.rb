Given(/^I'm on the "Start Americas Together" homepage$/) do
    page.driver.browser.manage.window.maximize    
    visit 'https://testing-start.web.app/'
end

Given(/^I click on the button "Login"$/) do
    xpath = '/html/body/div/header/div[1]/button'
    find(:xpath, xpath).click
end

When(/^I fill the input fields with the information bellow$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
      when "Correo Electronico:"
          fill_in 'email', :with => value 
      when "Contraseña:"
          fill_in 'password', :with => value
      end
    end
end

When(/^I click on the button "Iniciar Sesion"$/) do
    xpath = '/html/body/div/div/div[2]/div/form/div[3]/button[1]/span[1]'
    find(:xpath, xpath).click
    # sleep(5)
end
  
Then(/^the welcome message should be dispayed on the screen$/) do 
    xpath = '/html/body/div/section/h1'
    expect(page).to have_content("Bienvenido a Start Americas Together")
    # puts find(:xpath, xpath).text
end

Then(/^the "LOG OUT" button should appear in the page$/) do
    xpath = '/html/body/div/header/div[1]/button/span[1]'
    find(:xpath, xpath)
end