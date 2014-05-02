require 'spec_helper'

feature "Signup" do
  scenario "Signing up as a new user" do
    visit root_path
    click_on "Sign Up"
    user = User.new(   name: 'Emma',
                email: 'test@test.com',
                user_name: 'emmadilemma',
                password: 'Password123',
                password_confirmation: 'Password123',
                location: 'Charlotte, NC',
                role: 'Bride',
                total_budget: '1000')
    fill_in 'Name', with: user.name
    fill_in 'Email', with: user.email
    fill_in 'Username', with: user.user_name
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password_confirmation
    fill_in 'Location', with: user.location
    fill_in 'Role in wedding', with: user.role
    fill_in 'Total budget amount', with: user.total_budget
    click_button 'Create User'
    page.should have_content 'Profile created. Welcome!'
  end

  scenario "Logging In" do
    visit root_path
    click_on "Log In"
    user = User.create( name: 'Emma',
                        email: 'test@test.com',
                        user_name: 'emmadilemma',
                        password: 'Password123',
                        password_confirmation: 'Password123',
                        location: 'Charlotte, NC',
                        role: 'Bride',
                        total_budget: '1000')
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'
    page.should have_content 'Logged in!'
  end

  scenario "Logging Out" do
    user = User.create( name: 'Emma',
                        email: 'test@test.com',
                        user_name: 'emmadilemma',
                        password: 'Password123',
                        password_confirmation: 'Password123',
                        location: 'Charlotte, NC',
                        role: 'Bride',
                        total_budget: '1000')
    log_in(user)
    click_on 'Log Out'
    page.should have_content 'Logged out!'
  end
end
