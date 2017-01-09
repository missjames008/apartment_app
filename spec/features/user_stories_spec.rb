require 'rails_helper'

RSpec.feature "UserStories", type: :feature do
  context 'Apartment listings' do
    Steps 'I see a list of apartments' do
      Given 'I am on the landing page' do
        visit '/'
      end
      Then 'I can see a list of apartments' do
        expect(page).to have_content("Listing Apartments")
      end
    end
  end
end
