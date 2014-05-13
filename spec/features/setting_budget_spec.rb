require 'spec_helper'

feature 'Setting a Total Budget' do

  scenario "Setting a Budget with One Contributor" do
    visit '/'
    page.should have_content 'Setting a Wedding Budget'
    fill_in 'How much do you think you want to spend?', with: '10000'
    fill_in 'How much have you already saved?', with: '7000'
    fill_in 'How many months until the wedding?', with: '9'
    fill_in 'How much can you realistically set aside each month?', with: '200'
    click_on 'What\'s my budget?'
    page.should have_content 'Weddings are expensive. You should approach your wedding planning having set a budget that is within your means.'
    page.should have_content 'The national average for a wedding in 2013 was $25,200.'
    page.should have_content 'According to the information you have provided, your Total Wedding Budget is: $8,800'
  end
end
