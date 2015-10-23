class Puppy<ActiveRecord::Base
  validates_presence_of :date_of_birth
  validates_presence_of :name
  validates_presence_of :sex
  # validates_presence_of :weight

  belongs_to :user
  belongs_to :litter
end
