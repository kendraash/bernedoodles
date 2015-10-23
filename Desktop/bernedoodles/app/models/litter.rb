class Litter<ActiveRecord::Base
  validates_presence_of :due_date
  belongs_to :user
  belongs_to :dog
  has_many :puppies
end
