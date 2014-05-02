def create_user(attributes={})
  defaults = {
    name: 'Emma',
    email: 'test@test.com',
    user_name: 'emmadilemma',
    password: 'Password123',
    password_confirmation: 'Password123',
    location: 'Charlotte, NC',
    role: 'Bride',
    total_budget: '1000'
  }
  attributes = defaults.merge(attributes)
  User.create!(attributes)
end

def log_in(user)
  click_on 'Log In'
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Log In'
end
