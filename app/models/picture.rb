class Picture < ActiveRecore::Base
  belongs_to :imageable, polymoric: true
  
end
