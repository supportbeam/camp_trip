class Camp < ActiveRecord::Base
  validates :name, uniqueness:true, presence: true, length: { minimum: 3 }
  validates :address, uniqueness: true, presence: true

  has_many :reviews
  has_many :users, through: :reviews

  geocoded_by :full_address
  after_validation :geocode, if: (:address_changed? || :city_changed? || :province_changed?)

  def full_address
    "#{address} #{city} #{province}"
  end
end