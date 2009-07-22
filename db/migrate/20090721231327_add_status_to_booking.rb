class AddStatusToBooking < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :name
      t.text :description
    end
    create_table :booking_statuses do |t|
      t.integer :booking_id
      t.integer :state_id
      t.integer :user_id

      t.datetime :created_at
    end
    
  end

  def self.down
    drop_table :states
    drop_table :booking_statuses
  end
end
