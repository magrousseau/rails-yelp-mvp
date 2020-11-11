class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, format: { with: /\A0|1|2|3|4|5\z/, message: 'numbers from 0 to 5' }
end
