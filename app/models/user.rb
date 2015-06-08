class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, presence: true, length: { minimum: 5 }, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true, presence: true
  validates :username, uniqueness: true, presence: true

  has_many :reviews
  has_many :camps, through: :reviews
end
