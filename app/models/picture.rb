class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  has_attached_file :name, :styles => { :medium => "300x300" }
end
