class Customer < ActiveRecord::Base
  belongs_to :list
  validates :name, :presence => true
end