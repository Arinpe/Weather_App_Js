class User < ApplicationRecord
  has_secure_password
  has_many :appointments
  has_many :cars, through: :appointments

  validates_uniqueness_of :username
  validates :username, presence: true
  validates :password, presence: true
end
