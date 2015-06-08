class Camp < ActiveRecord::Base
  validates :name, uniqueness:true, presence: true, length: { minimum: 3 }
  validates :address, uniqueness: true, presence: true

  has_many :reviews
  has_many :users, through: :reviews

end