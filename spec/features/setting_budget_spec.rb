require 'spec_helper'

feature 'Setting a Total Budget' do

  scenario "Setting a Budget with One Contributor" do
    visit '/'
    page.should have_content 'Setting Your Total Wedding Budget'
    fill_in 'How much do you want to spend?', with: '10000'
    page.should have_content '(if not sure, leave empty)'
    fill_in 'How much do you already have saved?', with: '7000'
    select 'Nine Months', from: 'Months Until Wedding'
    page.should have_content '(This is how long you have to save. We recommend not including the final month prior to the actual wedding date.)'
    fill_in 'How much can you realistically set aside each month?', with: '200'
    page.should have_content 'The national average for a wedding in 2013 was $25,200.'
    page.should have_content 'According to the information you have provided, your Total Wedding Budget is: $8,800'
  end
end
