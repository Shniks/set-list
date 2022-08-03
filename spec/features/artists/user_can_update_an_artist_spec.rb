require 'rails_helper'

RSpec.describe 'When I visit the artists Index' do
  it 'I can update an artist' do

    artist_1 = Artist.create!(name: 'Pablo Picasso')
    artist_2 = Artist.create!(name: 'Frida Kahlo')

    visit '/artists'
    within '.artist_2' do
      click_link 'Edit'
    end

    expect(current_path).to eq("/artists/#{artist_2.id}/edit")

    fill_in 'name', with: 'Banksy'
    click_on 'Update Artist'

    expect(current_path).to eq('/artists')
    within '.artist_2' do
      expect(page).to have_content('Banksy')
    end
  end
end
