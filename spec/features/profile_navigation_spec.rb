require 'spec_helper'

feature "Profile Navigation" do

  scenario "Viewing Profile" do
    visit new_session_path
     user = User.create( name: 'Emma',
                        email: 'test@test.com',
                        user_name: 'emmadilemma',
                        password: 'Password123',
                        password_confirmation: 'Password123',
                        location: 'Charlotte, NC',
                        role: 'Bride',
                        total_budget: '1000')
    sign_in(user)
    click_on 'View Profile'
    page.should have_content 'Emma is the Bride!'
  end

  scenario "Editing Profile" do
    visit new_session_path
     user = User.create( name: 'Emma',
                        email: 'test@test.com',
                        user_name: 'emmadilemma',
                        password: 'Password123',
                        password_confirmation: 'Password123',
                        location: 'Charlotte, NC',
                        role: 'Bride',
                        total_budget: '1000')
    sign_in(user)
    click_on 'View Profile'
    page.should have_content 'Edit Profile'
    page.should have_content 'View Profile'
    page.should have_content 'Home'
    page.should have_content 'Log Out'
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
    click_on 'Log Out'
    click_on 'Log In'
    fill_in 'Email', with: 'emma@ma.com'
    fill_in 'Password', with: '123456Password'
    click_button 'Log In'
    page.should have_content 'Logged in as EmmaD'
  end
end
