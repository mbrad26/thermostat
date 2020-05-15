feature 'Viewing the temperature settings' do

  scenario 'viewing temperature button and settings' do
    visit('/')
    expect(page).to have_button('+')
    expect(page).to have_button('-')
    expect(page).to have_button('reset')
    expect(page).to have_button('PSM On')
    expect(page).to have_button('PSM Off')
    expect(page).to have_css('#temperature')
    expect(page).to have_css('#power-saving-status')
  end

  scenario 'user can see the temperature increase' do
    visit('/')
    expect(page).to have_content('20')
    3.times do 
      click_button('+')
    end
    expect(page).to have_content('23')
  end

  scenario 'user can see the temperature decrease' do
    visit('/')
    expect(page).to have_content('20')
    3.times do 
      click_button('-')
    end
    expect(page).to have_content('17')
  end


  # scenario 'user can increase to 32 on power saving mode off' do
  #   visit('/')
  #   expect(page).to have_content('20')
  #   click_button('PSM Off')
  #   12.times do 
  #     click_button('+')
  #   end

  # end

end
