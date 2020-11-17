class ChangeDaysToIntegerInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :days, :integer
  end
end
