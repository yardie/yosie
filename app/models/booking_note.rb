class BookingNote < ActiveRecord::Base
  
  belongs_to :booking
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  
end