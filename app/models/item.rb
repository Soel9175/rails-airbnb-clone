class Item < ApplicationRecord
  belongs_to :user
  validates :name, :size, :gender, :available, :price, :initial_condition, :brand, :num_uses, presence: true
  validates :available, inclusion: { in: [true, false] }
end
