require 'rails_helper'
require 'support/session_helpers'

describe 'the process of adding a dog' do
  before do
      sign_in
    end

  it 'allows a user to add a new dog' do
    visit user_path(@admin_user)
    find('#new_dog_link').click
    fill_in 'Name', :with => 'Zoe'
    fill_in 'Sex', :with => 'female'
    fill_in 'Date of birth', :with => '2005, 07, 1'
    find("input#create_dog").click
    expect(page).to have_content 'Zoe'
  end
end
