class Item < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :size, presence: true 
  validates :gender, presence: true 
  validates :available, presence: true
  validates :price, presence: true, 
            numericality: {greater_than_or_equal_to: 0, only_integer: false}, 
            format: { with: /\A\d\.\d\d\z/, message: "price must have two decimal places" }
  validates :initial_condition, presence: true
  validates :brand, presence: true
  validates :num_uses, presence: true, 
            numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validates :available, inclusion: { in: [true, false] }
end
