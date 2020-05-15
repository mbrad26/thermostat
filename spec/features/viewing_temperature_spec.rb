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

  scenario 'a user can ajust the temperature up' do
    visit '/'

    expect(page.find_by_id('temperature')).to have_content '20'

    3.times do
      click_button '+'
    end

    expect(page.find_by_id('temperature')).not_to have_content '20'
    expect(page.find_by_id('temperature')).to have_content '23'
  end

  scenario 'a user can ajust the temperature down' do
    visit '/'

    expect(page.find_by_id('temperature')).to have_content '20'

    3.times do
      click_button '-'
    end

    expect(page.find_by_id('temperature')).not_to have_content '20'
    expect(page.find_by_id('temperature')).to have_content '17'
  end

  scenario 'a user can reset the temperature to default' do
    visit '/'

    expect(page.find_by_id('temperature')).to have_content '20'

    5.times do
      click_button '+'
    end

    expect(page.find_by_id('temperature')).to have_content '25'

    click_button 'reset'

    expect(page.find_by_id('temperature')).to have_content '20'
  end

  scenario 'power saving mode is ON by default' do
    visit '/'

    expect(page.find_by_id('power-saving-status')).to have_content 'ON'
  end

  scenario 'power saving mode can be turned OFF' do
    visit '/'

    expect(page.find_by_id('power-saving-status')).to have_content 'ON'

    click_button 'PSM Off'

    expect(page.find_by_id('power-saving-status')).to have_content 'OFF'
  end
end
