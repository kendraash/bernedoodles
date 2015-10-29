class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :puppies
  has_many :litters
  has_many :dogs

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
