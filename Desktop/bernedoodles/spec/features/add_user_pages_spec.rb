require 'rails_helper'

describe 'the add a user process' do
  before do
    @user = FactoryGirl.create(:user)
    @password = 'password'
  end

  it 'can add a user' do
    visit new_user_registration_path
    fill_in 'Email', :with => 'bernie@sanders.com'
    fill_in 'Password', :with => @password
    fill_in 'Password confirmation', :with => @password
    find("input#sign_up").click
    expect(page).to have_content 'Welcome!' # takes user to sign in page
  end

  it 'displays errors when the form password and password confirmation do not match' do
    visit new_user_registration_path
    fill_in 'Email', :with => 'bernie@sanders.com'
    fill_in 'Password', :with => @password
    find("input#sign_up").click
    expect(page).to have_content "Password confirmation doesn't match Password Email Password"
  end
end
