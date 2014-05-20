require 'spec_helper'

feature 'Budget Checklist' do

  scenario "User chooses the Budget Checklist Items they want to include" do
    visit '/checklists'
    page.should have_content 'Making a Checklist'
    page.should have_content 'Do you know what you want?'
    check 'Wedding Dress and Accessories'
    check 'Reception Venue'
    check 'Wedding Rings'
    check 'Wedding Cake'
    check 'Meals and Catering'
    check 'Photography'
    check 'Wedding Flowers'
    check 'Ceremony Officiant'
    click_on "Help Me Plan!"
  end
end
