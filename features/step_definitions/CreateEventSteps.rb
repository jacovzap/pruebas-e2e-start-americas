Given('I have browsed to the Start Americas Together home page') do
    page.driver.browser.manage.window.maximize
    visit('https://dev-front-startamericas.web.app')
end


  Given('I see the Start Americas Together page and {string} title') do |events|
    page.should have_content(events)
  end

  Given('I scroll the page') do
    page.execute_script('window.scrollTo(0,500)')
end  
  
  When('I click on the Explorar Eventos button') do
    xpath = '/html/body/div/div[2]/div[1]/section/div[1]/div[1]/div/button'
    find(:xpath, xpath).click
end

  
  Then('I should see the {string} page') do |eventVigentes|
    page.should have_content(eventVigentes) 
 end


 #/html/body/div[1]/div[2]/div[1]/div/div[1]/div[1]/div[3]/div[2]/button[1]