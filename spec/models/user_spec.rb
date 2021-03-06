require 'rails_helper'

describe User do
  it { should validate_presence_of :email}
  it { should validate_presence_of :password}
  it { should have_many :dogs}
  it { should have_many :litters}
  it { should have_many :puppies}
end
