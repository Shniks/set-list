require 'rails_helper'

RSpec.describe 'When I visit the artists index and click on new artist' do
  describe 'my current path is /artists/new' do
    describe 'I fill in the artists name and click create artist' do
      it 'redirects me to the artist index page' do

        visit artists_path
        click_on 'New Artist'

        expect(current_path).to eq(new_artist_path)

        fill_in 'artist[name]', with: 'Pablo Picasso'
        click_on 'Create Artist'

        expect(current_path).to eq(artists_path)
        within '.artist_1' do
          expect(page).to have_content('Pablo Picasso')
        end 
      end
    end
  end
end
