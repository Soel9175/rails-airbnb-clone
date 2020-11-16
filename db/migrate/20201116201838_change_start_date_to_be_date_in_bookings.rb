class ChangeStartDateToBeDateInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :start_date, :date, using: 'start_date::date'
  end
end
