class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user_id, presence: true
  validates :item_id, presence: true
end
