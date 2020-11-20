class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon
  has_many :reviews, dependent: :destroy
end
