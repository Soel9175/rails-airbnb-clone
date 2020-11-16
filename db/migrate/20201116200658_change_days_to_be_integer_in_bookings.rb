class ChangeDaysToBeIntegerInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :days, :integer, using: 'days::integer'
  end
end
