require 'rails_helper'

RSpec.describe 'When I visit the Artists index page' do
  it 'I can delete an artist by clicking the delete button' do

    artist_1 = Artist.create!(name: 'Pablo Picasso')
    artist_2 = Artist.create!(name: 'Frida Kahlo')

    visit '/artists'
    
    within '.artist_2' do
      click_button 'Delete'
    end

    expect(current_path).to eq('/artists')
    expect(page).to have_content(artist_1.name)
    expect(page).to_not have_content(artist_2.name)
    expect(page).to_not have_content('.artist_2')
  end
end
