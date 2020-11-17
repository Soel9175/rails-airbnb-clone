require 'date'

class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :user
  validates :start_date, presence: true, numericality: { greater_than_or_equal_to: Date.today }
  validates :end_date, presence: true, numericality: { greater_than_or_equal_to: :start_date }
  validates :user_id, presence: true
  validates :item_id, presence: true
end
