# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090721231327) do

  create_table "booking_notes", :force => true do |t|
    t.integer  "booking_id"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "author_id"
    t.integer  "latest_editor_id"
  end

  create_table "booking_statuses", :force => true do |t|
    t.integer  "booking_id"
    t.integer  "state_id"
    t.integer  "user_id"
    t.datetime "created_at"
  end

  create_table "bookings", :force => true do |t|
    t.date     "ArrivalDate"
    t.date     "DepartureDate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "author_id"
    t.integer  "latest_editor_id"
  end

  create_table "states", :force => true do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "firstname",                 :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
    t.string   "state",                                    :default => "passive"
    t.datetime "deleted_at"
    t.string   "surname"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
