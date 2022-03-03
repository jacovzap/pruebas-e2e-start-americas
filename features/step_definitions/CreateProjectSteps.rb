Given('I have created one project with my account') do
    page.driver.browser.manage.window.maximize
    visit('https://dev-front-startamericas.web.app')
  end
And('I have pressed the  "Proyectos" button') do
    xpath = '/html/body/div/div[2]/header/div[2]/div/button[2]'
    find(:xpath, xpath).click
end
And('I have pressed the  "Crear Proyecto" button') do
    xpath = '/html/body/div/div[2]/div[1]/div/div[1]/div/div[2]/button/span[1]'
    find(:xpath, xpath).click
end
When('I press the  "Crear Proyecto" button') do
    xpath = '/html/body/div/div[2]/header/div[2]/div/button[2]'
    find(:xpath, xpath).click
end
Then('go to the form "Crear Proyecto') do
    xpath = '/html/body/div/div[2]/header/div[2]/div/button[2]'
    find(:xpath, xpath).click
end
