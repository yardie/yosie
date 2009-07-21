class Booking < ActiveRecord::Base
  
  belongs_to :user
  has_many :booking_notes

end
