require 'spec_helper'

feature "Profile Navigation" do

  before { visit '/' }

  scenario "Viewing Profile" do
    user = create_user(name: "Micahela", role: "Bride", user_name: "micahela", location: "Portland", total_budget: 10000)
    log_in(user)
    click_on 'View Profile'
    page.should have_content 'Micahela is the Bride!'
    page.should have_content 'Username: micahela'
    page.should have_content 'Location: Portland'
    page.should have_content "Micahela's total budget is: $10,000"
  end

  scenario "Editing Profile" do
    user = create_user
    log_in(user)
    click_on 'View Profile'
    click_on 'Edit Profile'
    fill_in 'Name', with: 'Em'
    fill_in 'Email', with: 'emma@ma.com'
    fill_in 'Username', with: 'EmmaD'
    fill_in 'Password', with: '123456Password'
    fill_in 'Password confirmation', with: '123456Password'
    fill_in 'Location', with: 'Portland, OR'
    fill_in 'Role in wedding', with: 'Bride'
    fill_in 'Total budget amount', with: '10500'
    click_on 'Update User'
    page.should have_content 'Thank you for updating your profile!'
    page.should have_content 'Wedding Planning Start Page'
    click_on 'Log Out'
    click_on 'Log In'
    fill_in 'Email', with: 'emma@ma.com'
    fill_in 'Password', with: '123456Password'
    click_button 'Log In'
    page.should have_content 'Logged in as EmmaD'
  end
end