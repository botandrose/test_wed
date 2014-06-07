require 'spec_helper'

feature 'Setting a Budget, Making a Checklist and Viewing Estimates' do

  scenario "User Sets a Budget with One Contributor, Views Budget Assessment, Makes Checklist Choices and Views Specific Estimates" do
    visit '/'
    page.should have_content 'Set a Wedding Budget'
    fill_in 'How much do you think you want to spend?', with: '9000'
    fill_in 'How much have you already saved?', with: '1000'
    fill_in 'How many months until the wedding?', with: '4'
    fill_in 'How much can you realistically set aside each month?', with: '1000'
    click_on "What's my budget?"
    page.should have_content 'Your Wedding Budget'
    page.should have_content 'Knowing your limits is a great start'
    page.should have_content 'The national average for a wedding in 2013 was $25,200.'
    page.should have_content 'At this time, you anticipate spending $9,000'
    page.should have_content 'but, according to your available funds, your actual Total Wedding Budget is $5,000'
    page.should have_content 'On the next page is a checklist of the elements usually found in a wedding.'
    click_on 'Wedding Elements Checklist'
    page.should have_content 'Making a Checklist'
    page.should have_content 'What are your Big Day Must Haves?'
    check 'Wedding Dress and Accessories'
    check 'Groom\'s Attire and Accessories'
    check 'Wedding Rings'
    check 'Wedding Cake'
    check 'Meals and Catering'
    check 'Videography'
    check 'Ceremony Venue'
    click_on 'Help Me Plan!'
    page.should have_content 'Your Checklist Page'
    page.should have_content 'Let\'s Start Planning!'
    page.should have_content 'Below is a list of Your Checklist Items.'
    page.should have_content 'based on your Total Wedding Budget of $5,000'
    page.should have_content 'Your estimated expense for the Wedding Dress and Accessories is $750.'
    page.should have_content 'Your estimated expense for the Groom\'s Attire and Accessories is $200.'
    page.should have_content 'Your estimated expense for the Wedding Rings is $350.'
    page.should have_content 'Your estimated expense for the Wedding Cake is $300.'
    page.should have_content 'Your estimated expense for the Meals and Catering is $2,900.'
    page.should have_content 'Your estimated expense for the Videography is $400.'
    page.should have_content 'Your estimated expense for the Ceremony Venue is $100.'
  end
end
