def sign_up(user)
  fill_in 'Name', with: user.name
  fill_in 'Email', with: user.email
  fill_in 'Username', with: user.user_name
  fill_in 'Password', with: user.password
  fill_in 'Password confirmation', with: user.password_confirmation
  fill_in 'Location', with: user.location
  fill_in 'Role in wedding', with: user.role
  fill_in 'Total budget amount', with: user.total_budget
  click_button 'Create User'
end

def sign_in(user)
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log In'
end
