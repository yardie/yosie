class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.date :ArrivalDate
      t.date :DepartureDate

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
