require 'spec_helper'

feature 'Budget Checklist' do

  scenario "User chooses the Budget Checklist Items they want to include" do
    visit '/mockups/budget_checklist'
    page.should have_content 'Making a Checklist'
    page.should have_content 'Do you know what you want?'
    # can capybara test for hidden values?
    check 'Wedding Dress and Accessories'
    check 'Reception Venue'
    check 'Wedding Rings'
    check 'Wedding Cake'
    check 'Meals and Catering'
    check 'Photography'
    check 'Wedding Flowers'
    check 'Ceremony Officiant'
    click_on "Help Me Plan!"
    # clicking on button takes user to their own checklist page, displaying items and amounts - can this be tested?
    visit '/mockups/display_budget'
    page.should have_content 'Your Checklist Page'
    page.should have_content 'Let\'s Start Planning!'
    page.should have_content 'Below is a list of Your Checklist Items.'
    page.should have_content 'Your estimated expense for the Wedding Dress and Accessories is $1200.'
    page.should have_content 'Your estimated expense for the Reception Venue is $500.'
    page.should have_content 'Your estimated expense for the Wedding Rings is $500.'
    page.should have_content 'Your estimated expense for the Wedding Cake is $500.'
    page.should have_content 'Your estimated expense for the Meals and Catering is $4,700.'
    page.should have_content 'Your estimated expense for the Photography is $1300.'
    page.should have_content 'Your estimated expense for the Wedding Flowers is $1100.'
    page.should have_content 'Your estimated expense for the Ceremony Officiant is $200.'
    page.should have_content 'Revise Your Checklist'
  end
end
