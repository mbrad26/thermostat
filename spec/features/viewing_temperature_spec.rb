feature 'Viewing the temperature settings' do
  scenario 'a user can see the thermostat settings and temperature' do
    visit '/'

    expect(page).to have_content "Thermostat"
    expect(page).to have_button '+'
    expect(page).to have_button '-'
    expect(page).to have_button 'reset'
    expect(page).to have_button 'PSM On'
    expect(page).to have_button 'PSM Off'
  end

  scenario 'a user can ajust the temperature up and down' do
    visit '/'

    expect(page.find_by_id('temperature').text).to eq '20'

    click_button '+'

    expect(page.find_by_id('temperature').text).not_to eq '20'
    expect(page.find_by_id('temperature').text).to eq '21'

    click_button '-'
    click_button '-'

    expect(page.find_by_id('temperature').text).not_to eq '21'
    expect(page.find_by_id('temperature').text).to eq '19'
  end

  # scenario 'a user can ajust the temperature down' do
  #   '/visit'
  #
  #   expect(page.find_by_id('temperature').text).to eq '20'
  #
  #   click_button '-'
  #   click_button '-'
  #
  #   expect(page.find_by_id('temperature').text).not_to eq '20'
  #   expect(page.find_by_id('temperature').text).to eq '18'
  # end
end
