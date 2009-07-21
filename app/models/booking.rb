class Booking < ActiveRecord::Base
  
  belongs_to :user
  has_many :booking_notes
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  belongs_to :latest_editor, :class_name => "User", :foreign_key => "latest_editor_id"

end
