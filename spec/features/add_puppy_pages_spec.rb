require 'rails_helper'
require 'support/session_helpers'

describe 'the process of adding a puppy' do
  before do
      sign_in
      create_factories
    end

  it 'allows a user to add a new puppy' do
    visit dog_litter_path(@dog, @litter)
    find('#new_puppy_link').click
    fill_in 'Name', :with => 'Pink'
    fill_in 'Sex', :with => 'female'
    fill_in 'Date of birth', :with => '2005, 07, 1'
    fill_in 'Weight', :with => '3'

    click_on "Submit"
    expect(page).to have_content 'Pink'
  end
  it 'checks for errors when adding a new puppy' do
    visit dog_litter_path(@dog, @litter)
    find('#new_puppy_link').click
    fill_in 'Name', :with => 'Pink'
    fill_in 'Sex', :with => 'female'
    fill_in 'Date of birth', :with => '2005, 07, 1'
    click_on "Submit"
    expect(page).to have_content 'errors'
  end
end
