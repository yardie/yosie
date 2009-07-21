class AddLatestEditorToBookingsAndNotes < ActiveRecord::Migration
  def self.up
    add_column :bookings, :latest_editor_id, :integer
    add_column :booking_notes, :latest_editor_id, :integer
  end

  def self.down
    remove_column :bookings, :latest_editor_id
    remove_column :booking_notes, :latest_editor_id
  end
end