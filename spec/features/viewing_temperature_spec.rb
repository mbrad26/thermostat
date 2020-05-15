
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

  scenario 'a user can reset the temperature' do
    visit '/'

    expect(page.find_by_id('temperature')).to have_content '20'

    3.times do
      click_button '+'
    end

    expect(page.find_by_id('temperature')).not_to have_content '20'
    expect(page.find_by_id('temperature')).to have_content '23'
  end

  scenario 'thermostat has PSM ON by default' do
    visit '/'

    expect(page.find_by_id('temperature')).to have_content '20'
    expect(page.find_by_id('power-saving-status')).to have_content 'ON'
  end

  scenario 'a user can turn PSM OFF' do
    visit '/'

    expect(page.find_by_id('power-saving-status')).to have_content 'ON'

    click_button 'PSM Off'

    expect(page.find_by_id('power-saving-status')).to have_content 'OFF'
  end

  context 'when PSM is ON' do
    scenario 'a user can\'t turn the temperature over 25' do
      visit '/'

      expect(page.find_by_id('temperature')).to have_content '20'

      7.times do
        click_button '+'
      end

      expect(page.find_by_id('temperature')).to have_content '25'
    end
  end

  context 'when PSM is OFF' do
    scenario 'a user can turn the teperature to 28' do
      visit '/'

      expect(page.find_by_id('temperature')).to have_content '20'

      click_button 'PSM Off'

      8.times do
        click_button '+'
      end

      expect(page.find_by_id('temperature')).to have_content '28'
    end
  end
end
