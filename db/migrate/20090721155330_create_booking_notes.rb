class CreateBookingNotes < ActiveRecord::Migration
  def self.up
    create_table :booking_notes do |t|
      t.integer :booking_id
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :booking_notes
  end
end
