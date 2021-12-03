

Then (/^A confirmation message should appear on the screen$/) do 
    expect(page).to have_text('Esta seguro que desea eliminar?')
end


Then (/^I should see the projets I accepted to participate$/) do 
    expect(page).to have_text('Proyecto: Salvenos nuestra tierra')
end


Then (/^I should see the events I accepted to participate$/) do 
    expect(page).to have_text('Evento: Marcha Pacifica')
end