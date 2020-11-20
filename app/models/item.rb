class Item < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :size, presence: true
  validates :gender, presence: true
  validates :available, presence: true
  validates :price, presence: true,
            numericality: {greater_than_or_equal_to: 0}
  validates :initial_condition, presence: true
  validates :brand, presence: true
  validates :num_uses, presence: true,
            numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :available, inclusion: { in: [true, false] }

  has_one_attached :photo
  has_many :bookings
end
