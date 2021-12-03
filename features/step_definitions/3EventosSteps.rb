Given(/^I'm on the "Eventos" view$/) do
    sleep(2)
    xpath = '/html/body/div/header/div[2]/div/button[3]'
    find(:xpath, xpath).click
end


Given(/^the event "([^"]*)" exists in the past event list$/) do |event_name|
    xpath_button = '/html/body/div/div/div[1]/div[2]/button'
    find(:xpath, xpath_button).click
    cont = 0
    sleep(1)
    size = page.all(:css, '.w-70').size
    while cont < size
        if page.all(:css, '.w-70')[cont].text.include? event_name
            size = 0
        else
            cont = cont + 1
        end
    end
    expect(page.all(:css, '.w-70')[cont].text).to have_content(event_name)
end


When(/^I fill the event input fields with the information below$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Nombre del evento:"
            xpath_title = '/html/body/div/div/form/div[1]/input'
            find(:xpath, xpath_title).set(value)
        when "Descripcion:"
            xpath_description = '/html/body/div/div/form/div[2]/textarea'
            find(:xpath, xpath_description).set(value)
        when "Lugar:"
            xpath_objetive = '/html/body/div/div/form/div[3]/div[2]/input'
            find(:xpath, xpath_objetive).set(value)
        end
    end
end


When (/^I click on the event button "Crear Evento"$/) do
    xpath = '/html/body/div/div/div[1]/div[2]/a[1]'
    find(:xpath, xpath).click
end


When(/^I accept the confirmation message$/) do
    page.driver.browser.switch_to.alert.accept
end


When(/^I click on the button "([^"]*)" of the event "([^"]*)"$/) do |button_name, project_name|
    cont = 0
    size = page.all(:css, '.w-70').size
    while cont < size
    if page.all(:css, '.w-70')[cont].text.include? project_name
        page.all(:css, '.w-70')[cont].click_button(button_name)
        sleep(1)
        cont = size
        else
        cont = cont + 1
        end
    end
end



Then(/^the event "([^"]*)" exists in the event list$/) do |event_name|
    cont = 0
    sleep(1)
    size = page.all(:css, '.w-70').size
    puts size
    while cont < size
        if page.all(:css, '.w-70')[cont].text.include? event_name
            puts cont
            size = 0
        else
            cont = cont + 1
        end
    end
    expect(page.all(:css, '.w-70')[cont].text).to have_content(event_name)
end


Then(/^the event should have the title "([^"]*)"$/) do |title|
    cont = 0
    sleep(1)
    size = page.all(:css, '.w-70').size
    while cont < size
        if page.all(:css, '.w-70')[cont].text.include? title
            size = 0
        else
            cont = cont + 1
        end
    end
    expect(page.all(:css, '.w-70')[cont].text).to have_content(title)
end



Then(/^the event should have the description "([^"]*)"$/) do |description|
    cont = 0
    sleep(1)
    size = page.all(:css, '.w-70').size
    while cont < size
        if page.all(:css, '.w-70')[cont].text.include? description
            size = 0
        else
            cont = cont + 1
        end
    end
    expect(page.all(:css, '.w-70')[cont].text).to have_content(description)
end



Then(/^the event should have the place "([^"]*)"$/) do |place|
    cont = 0
    sleep(1)
    size = page.all(:css, '.w-70').size
    while cont < size
        if page.all(:css, '.w-70')[cont].text.include? place
            size = 0
        else
            cont = cont + 1
        end
    end
    expect(page.all(:css, '.w-70')[cont].text).to have_content(place)
end


Then(/^the event "([^"]*)" should dissapear from the event list$/) do |event_name| 
    cont = 0
    found = false
    size = page.all(:css, '.w-70').size
    while cont < size
        if page.all(:css, '.w-70')[cont].text.include? event_name
            size = 0
            found = true
        else
            cont = cont + 1
        end
    end
    if found
        expect(page.all(:css, '.w-70')[cont].text).not_to have_content(event_name)
    else
        expect(page.all(:css, '.w-70')[size - 1].text).not_to have_content(event_name)
    end
end



Then(/^the event "([^"]*)" should appear in the past event list$/) do |event_name|
    xpath_button = '/html/body/div/div/div[1]/div[2]/button'
    find(:xpath, xpath_button).click
    cont = 0
    sleep(1)
    size = page.all(:css, '.w-70').size
    while cont < size
        if page.all(:css, '.w-70')[cont].text.include? event_name
            size = 0
        else
            cont = cont + 1
        end
    end
    expect(page.all(:css, '.w-70')[cont].text).to have_content(event_name)
end


Then(/^I should see a list of past Events$/) do 
    find(:xpath,'/html/body/div/div/div[2]/div/div[1]/div[1]')
end

Then(/^I should see the button "([^"]*)"$/) do |button_name|
    xpath = '/html/body/div/div/div[1]/div[2]'
    find(:xpath, xpath, :text => button_name)
end

Then(/^the event "([^"]*)" should appear in the event list$/) do |event_name|
    cont = 0
        sleep(1)
        size = page.all(:css, '.w-70').size
        puts size
        while cont < size
            if page.all(:css, '.w-70')[cont].text.include? event_name
                puts cont
                size = 0
            else
                cont = cont + 1
            end
        end
        expect(page.all(:css, '.w-70')[cont].text).to have_content(event_name)
end

Then(/^I should see the button "([^"]*)" in the event "([^"]*)"$/) do |button_name, event_name|

    cont = 0
    size = page.all(:css, '.w-70').size
    while cont < size
    if page.all(:css, '.w-70')[cont].text.include? event_name
        expect(page.all(:css, '.w-70')[cont].text).to have_content(button_name)
        sleep(1)
        cont = size
        else
        cont = cont + 1
        end
    end
end

