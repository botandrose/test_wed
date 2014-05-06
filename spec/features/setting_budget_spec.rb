require 'spec_helper'

feature 'Setting a Total Budget' do

  scenario "Setting a Budget with One Contributor?" do
    visit '/'
    page.should have_content 'Setting Your Total Wedding Budget'
    page.should have_content 'How much do you want to spend?'
    fill_in 'Speculated Amount', with: '10000'
    page.should have_content '(if not sure, leave empty)'
    page.should have_content 'Who is contributing to the Wedding Budget?'
    select 'Just Us', from: 'Select Contributors'
    page.should have_content 'How much is each party contributing?'
    page.should have_content 'Select checkbox beside each contributing party and fill in the amount'
    check 'Just Us'
    fill_in 'Just Us', with: '7000'
    page.should have_content 'How are they contributing?'
    check 'Lump Sum'
    check 'Monthly Contribution'
    page.should have_content 'How many months until the wedding?'
    page.should have_content '(This is how long you have to save. We recommend not including the final month prior to the actual wedding date.)'
    select 'Nine Months', from: 'Months Until Wedding'
    page.should have_content 'How much can you realistically set aside each month?'
    fill_in 'Monthly Savings', with: '200'
    page.should have_content 'The national average for a wedding in 2013 was $25,200.'
    page.should have_content 'According to the information you have provided, your Total Wedding Budget is: $8,800'
  end
end
