require 'rails_helper'

RSpec.describe 'When I visit the artists index and click on new artist' do
  describe 'my current path is /artists/new' do
    describe 'I fill in the artists name and click create artist' do
      it 'redirects me to the artist index page' do

        visit '/artists'
        click_link 'New Artist'

        expect(current_path).to eq('/artists/new')

        fill_in 'name', with: 'Pablo Picasso'
        click_on 'Create Artist'

        expect(current_path).to eq('/artists')

        within '.artist_1' do
          expect(page).to have_content('Pablo Picasso')
        end
      end
    end
  end
end
