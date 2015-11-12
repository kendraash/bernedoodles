class Litter<ActiveRecord::Base
  validates_presence_of :due_date
  belongs_to :user
  belongs_to :dog
  has_many :puppies

  has_many :pictures, as: :imageable


  def upcoming_litters
    Litter.all.each do |litter|
     if litter.due_date >= Date.today
       litter.due_date
     end
    end
  end
end
