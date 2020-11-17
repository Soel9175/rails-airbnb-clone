class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user
  validates :start_date, presence: true
  validates :days, presence: true
  validates :user_id, presence: true
  validates :item_id, presence: true
  validates :days, numericality: { only_integer: true, greater_than: 0 }
end
