class AddAuthorToBookingsAndNotes < ActiveRecord::Migration
  def self.up
    add_column :bookings, :author_id, :integer
    add_column :booking_notes, :author_id, :integer
  end

  def self.down
    remove_column :bookings_id, :author
    remove_column :booking_notes_id, :author
  end
end