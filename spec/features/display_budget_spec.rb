require 'spec_helper'

feature 'Display Checklist' do

  scenario "User views their Checklist Items along with budget estimates" do
    visit '/mockups/display_budget'
    page.should have_content 'Your Checklist Page'
    page.should have_content 'Let\'s Start Planning!'
    page.should have_content 'Wedding Dress and Accessories'
    page.should have_content 'Reception Venue'
    page.should have_content 'Wedding Rings'
    page.should have_content 'Wedding Cake'
    page.should have_content 'Meals and Catering'
    page.should have_content 'Photography'
    page.should have_content 'Wedding Flowers'
    page.should have_content 'Ceremony Officiant'
    page.should have_content 'Revise Your Checklist'
  end
end