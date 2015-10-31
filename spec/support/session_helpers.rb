def sign_in
  @admin_user = User.new(:email => 'whinecountrybernedoodles@gmail.com', :password => 'password', :password_confirmation => 'password')
  @admin_user.save
  visit user_session_path
  fill_in 'Email', with: @admin_user.email
  fill_in 'Password', with: @admin_user.password
  click_button 'Log in'
end
