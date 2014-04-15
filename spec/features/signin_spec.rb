require 'spec_helper'

feature "Signup" do
	
  scenario "Signing up as a new user" do
  	visit('users')
  	click_link('Sign Up')
  	fill_in 'Name', :with => 'Emma'
    fill_in 'Email', :with => 'em@ma.com'
    fill_in 'Username', :with => 'emmadilemma'
    fill_in 'Password', :with => '1234'
    fill_in 'Password confirmation', :with => '1234'
    fill_in 'Location', :with => 'Charlotte, NC'
    fill_in 'Role in wedding', :with => 'Bride'
    fill_in 'Total budget amount', :with => '1000'
    click_button 'Create User'
  	page.should have_content 'Profile created. Welcome!'
  end
end