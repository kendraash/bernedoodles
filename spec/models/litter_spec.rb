require 'rails_helper'

describe Litter do
  it { should validate_presence_of :due_date}
  it { should belong_to :user }
  it { should belong_to :dog }
  it { should have_many :puppies }
  it { should have_many :pictures }

end
