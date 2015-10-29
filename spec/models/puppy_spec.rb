require 'rails_helper'

describe Puppy do
  it { should validate_presence_of :name}
  it { should validate_presence_of :date_of_birth}
  it { should validate_presence_of :sex}
  # it { should validate_presence_of :weight}

  it { should belong_to :litter}
  it { should belong_to :user}
  it { should have_many :pictures}


end
