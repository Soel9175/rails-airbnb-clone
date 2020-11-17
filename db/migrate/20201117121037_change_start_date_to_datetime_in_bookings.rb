class ChangeStartDateToDatetimeInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :start_date, :datetime
    add_column :bookings, :end_date, :datetime
    remove_column :bookings, :days
  end
end
