require 'spec_helper'

feature "Signup" do
  scenario "Signing up as a new user" do
    visit 'users/new'
    user = User.new(   name: 'Emma',
                    email: 'test@test.com',
                    user_name: 'emmadilemma',
                    password: 'Password123',
                    password_confirmation: 'Password123',
                    location: 'Charlotte, NC',
                    role: 'Bride',
                    total_budget: '1000')
    sign_up(user)
    page.should have_content 'Profile created. Welcome!'
  end

  scenario "Logging In" do
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
    page.should have_content 'Logged in!'
  end

  scenario "Logging Out" do
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
      click_on 'Log Out'
      page.should have_content 'Logged out!'
  end
end
