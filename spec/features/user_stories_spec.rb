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

  context 'Adding a new apartment' do
    Steps 'Creating a new listing' do
      Given 'I am on the New Apartment page' do
        visit '/apartments/new'
      end
      Then 'I fill in the given fields' do
        fill_in 'apartment[street1]', with: '1 Arcadia Street'
        fill_in 'apartment[street2]', with: 'Apt 7'
        fill_in 'apartment[city]', with: 'Boston'
        fill_in 'apartment[state]', with: 'MA'
        fill_in 'apartment[country]', with: 'USA'
        fill_in 'apartment[name]', with: 'Paul Bunyan'
        fill_in 'apartment[phone]', with: '4'
        fill_in 'apartment[hours]', with: 'Every'
      end
      And 'I can submit the form' do
        click_button 'Create Apartment'
      end
      Then 'I am taken to the show listing page and can see the new listing' do
        expect(page).to have_content("Street1: 1 Arcadia Street")
      end
    end
  end
end
