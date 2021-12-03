


When(/^I fill the input fields of project with the information bellow$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
        case key
        when "Titulo:"
            xpath_title = '/html/body/div/div/div[2]/form/div[2]/div[1]/input'
            find(:xpath, xpath_title).set(value)
        when "Descripcion:"
            xpath_description = '/html/body/div/div/div[2]/form/div[2]/div[2]/input'
            find(:xpath, xpath_description).set(value)
        when "Objetivo:"
            xpath_objetive = '/html/body/div/div/div[2]/form/div[2]/div[3]/input'
            find(:xpath, xpath_objetive).set(value)
        when "Lider:"
            xpath_leader = '/html/body/div/div/div[2]/form/div[2]/div[4]/input'
            find(:xpath, xpath_leader).set(value)
        end
    end
end


When(/^I click on the button "([^"]*)" of the project "([^"]*)"$/) do |button_name, project_name|
    cont = 0
    size = page.all(:css, '.proyect-container').size
    while cont < size
    if page.all(:css, '.proyect-container')[cont].text.include? project_name
        page.all(:css, '.proyect-container')[cont].click_button(button_name)
        sleep(1)
        cont = size
        else
        cont = cont + 1
        end
    end
end




Then(/^the project "([^"]*)" exists in the project list$/) do |project_name|
    cont = 0
    sleep(1)
    size = page.all(:css, '.proyect-container').size
    while cont < size
        if page.all(:css, '.proyect-container')[cont].text.include? project_name
            size = 0
        else
            cont = cont + 1
        end
    end
    expect(page.all(:css, '.proyect-container')[cont].text).to have_content(project_name)
end



Then(/^the project should have the title "([^"]*)"$/) do |title|
      cont = 0
      size = page.all(:css, '.proyect-container').size
      puts size
      while cont < size
        if page.all(:css, '.proyect-container')[cont].text.include? title
            puts cont
            size = 0
          else
            cont = cont + 1
          end
      end
      expect(page.all(:css, '.proyect-container')[cont].text).to have_content(title)
end


Then(/^the project should have the description "([^"]*)"$/) do |description|
    cont = 0
    size = page.all(:css, '.proyect-container').size
    while cont < size
        if page.all(:css, '.proyect-container')[cont].text.include? description
            size = 0
        else
            cont = cont + 1
        end
    end
    expect(page.all(:css, '.proyect-container')[cont].text).to have_content(description)
end


Then(/^the project should have the objetive "([^"]*)"$/) do |objetive|
    cont = 0
    size = page.all(:css, '.proyect-container').size
    while cont < size
        if page.all(:css, '.proyect-container')[cont].text.include? objetive
            size = 0
        else
            cont = cont + 1
        end
    end
    expect(page.all(:css, '.proyect-container')[cont].text).to have_content(objetive)
end


Then(/^the project should have the leader "([^"]*)"$/) do |leader|
    cont = 0
    size = page.all(:css, '.proyect-container').size
    while cont < size
        if page.all(:css, '.proyect-container')[cont].text.include? leader
            size = 0
        else
            cont = cont + 1
        end
    end
    expect(page.all(:css, '.proyect-container')[cont].text).to have_content(leader)
end


Then(/^the message "([^"]*)" is displayed at the screen$/) do |message|
      xpath = '/html/body/div[2]/div[3]/div/div[1]/h2'
      find(:xpath, xpath, :text => message)
     
end

Then(/^the project "([^"]*)" should dissapear from the project list$/) do |project_name|
    cont = 0
    found = false
    size = page.all(:css, '.proyect-container').size
    while cont < size
        if page.all(:css, '.proyect-container')[cont].text.include? project_name
            size = 0
            found = true
        else
            cont = cont + 1
        end
    end
    if found
        expect(page.all(:css, '.proyect-container')[cont].text).not_to have_content(project_name)
    else
        expect(page.all(:css, '.proyect-container')[size - 1].text).not_to have_content(project_name)
    end
end