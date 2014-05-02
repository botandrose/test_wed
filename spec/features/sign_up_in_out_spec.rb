require 'spec_helper'

feature "Signup" do

  before { visit '/' }

  scenario "Signing up as a new user" do
    click_on "Sign Up"
    fill_in 'Name', with: 'Emma'
    fill_in 'Email', with: 'test@test.com'
    fill_in 'Username', with: 'emmadilemma'
    fill_in 'Password', with: 'Password123'
    fill_in 'Password confirmation', with: 'Password123'
    fill_in 'Location', with: 'Charlotte, NC'
    fill_in 'Role in wedding', with: 'Bride'
    fill_in 'Total budget amount', with: '1000'
    click_button 'Create User'
    page.should have_content 'Profile created. Welcome!'
  end

  scenario "Logging In" do
    user = create_user(email: "m@m.com", role: "Password123")
    click_on "Log In"
    fill_in 'Email', with: 'm@m.com'
    fill_in 'Password', with: 'Password123'
    click_button 'Log In'
    page.should have_content 'Logged in!'
  end

  scenario "Logging Out" do
    user = create_user
    log_in(user)
    click_on 'Log Out'
    page.should have_content 'Logged out!'
  end
end
