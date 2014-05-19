require 'spec_helper'

feature 'Setting a Total Budget' do

  scenario "Setting a Budget with One Contributor" do
    visit '/'
    page.should have_content 'Set a Wedding Budget'
    fill_in 'How much do you think you want to spend?', with: '10000'
    fill_in 'How much have you already saved?', with: '7000'
    fill_in 'How many months until the wedding?', with: '9'
    fill_in 'How much can you realistically set aside each month?', with: '200'
    click_on "What's my budget?"
    page.should have_content 'The national average for a wedding in 2013 was $25,200.'
    page.should have_content 'At this time, you anticipate spending $10,000'
    page.should have_content 'but, according to your available funds, your actual Total Wedding Budget is $8,800'
  end
end
