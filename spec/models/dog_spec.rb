require 'rails_helper'

describe Dog do
  it { should validate_presence_of :name}
  it { should validate_presence_of :date_of_birth}
  it { should validate_presence_of :sex}
  it { should have_many :litters}
  it { should have_many :pictures}
  

end
