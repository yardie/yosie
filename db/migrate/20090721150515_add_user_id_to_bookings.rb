class AddUserIdToBookings < ActiveRecord::Migration
  def self.up
    add_column :bookings, :user_id, :integer, :options => "CONSTRAINT fk_booking_user REFERENCES user(id)"
  end

  def self.down
    remove_column :bookings, :user_id
  end
end
