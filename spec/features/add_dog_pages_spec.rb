require 'rails_helper'

describe 'the process of adding a dog' do
  before do
    @user = User.create(:email => 'whinecountrybernedoodles@gmail.com', :password => 'password', :password_confirmation => 'password')
    sign_in(@user)
  end

  it 'allows a user to add a new dog' do
    visit dogs_path
    click_on 'Add Dog'
    fill_in 'name', :with => 'Zoe'
    fill_in 'sex', :with => 'female'
    fill_in 'date_of_birth', :with => '2005, 07, 1'
    find("input#create_dog").click
    expect(page).to have_content 'Zoe'
  end
end
