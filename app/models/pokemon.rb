class Pokemon < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  # has_many_attached :photos
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :abilities, presence: true
end
