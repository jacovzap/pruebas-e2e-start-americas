

When(/^I fill the new user input fields with the information bellow$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Correo Electronico:"
            xpath = '/html/body/div/div/div/div[2]/div[2]/form/div[1]/div/input'
            find(:xpath, xpath).set(value)
        when "Nombre:"
            xpath = '/html/body/div/div/div/div[2]/div[2]/form/div[2]/div[1]/div/input'
            find(:xpath, xpath).set(value)
        when "Apellido:"
            xpath = '/html/body/div/div/div/div[2]/div[2]/form/div[2]/div[2]/div/input'
            find(:xpath, xpath).set(value)
        when "Telefono:"
            xpath = '/html/body/div/div/div/div[2]/div[2]/form/div[3]/div/input'
            find(:xpath, xpath).set(value)
        when "Contraseña:"
            xpath = '/html/body/div/div/div/div[2]/div[2]/form/div[4]/div/input'
            find(:xpath, xpath).set(value)
        when "Confirmar_contraseña:"
            xpath = '/html/body/div/div/div/div[2]/div[2]/form/div[5]/div/input'
            find(:xpath, xpath).set(value)
        end
    end
end


Then(/^Then I should be returned to the login view$/) do
    xpath = '/html/body/div/section/h1'
    expect(page).to have_content("Bienvenido a Start Americas Together")
end