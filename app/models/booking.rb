class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user
  validates :start_date, :days, :user_id, :item_id, presence: true
  validates :days, numericality: { only_integer: true }
end
