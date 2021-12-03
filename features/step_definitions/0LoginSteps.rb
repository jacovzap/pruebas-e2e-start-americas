
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


Then(/^the welcome message should be dispayed on the screen$/) do 
    xpath = '/html/body/div/section/h1'
    expect(page).to have_content("Bienvenido a Start Americas Together")
    # puts find(:xpath, xpath).text
end

Then(/^the "LOG OUT" button should appear in the page$/) do
    xpath = '/html/body/div/header/div[1]/button/span[1]'
    find(:xpath, xpath)
end