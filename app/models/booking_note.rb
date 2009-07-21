class BookingNote < ActiveRecord::Base
  
  belongs_to :booking
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  belongs_to :latest_editor, :class_name => "User", :foreign_key => "latest_editor_id"
  
end