class Dog<ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :date_of_birth
  validates_presence_of :sex

  belongs_to :user
  has_many :litters
end
