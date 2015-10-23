require 'rails_helper'

describe 'the add a dog process' do
  before do
    @user = FactoryGirl.create(:user)
    sign_in(@user)
  end

  it 'allows a user to add a new dog' do
    visit dogs_path
    click_on 'Add Dog'
    fill_in 'name', :with => 'Zoe'
    fill_in 'sex', :with => 'female'
    fill_in 'date_of_birth', :with => '2005, 07, 1'
    click_on 'Create Dog'
    expect(page).to have_content 'Zoe'
  end
end
