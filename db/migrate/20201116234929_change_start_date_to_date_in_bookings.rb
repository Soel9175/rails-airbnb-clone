class ChangeStartDateToDateInBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :start_date
    add_column :bookings, :start_date, :date
  end
end
