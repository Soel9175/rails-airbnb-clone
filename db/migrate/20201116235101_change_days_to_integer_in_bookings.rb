class ChangeDaysToIntegerInBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :days
    add_column :bookings, :days, :integer
  end
end
