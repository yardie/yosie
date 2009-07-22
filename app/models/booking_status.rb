class BookingStatus < ActiveRecord::Base
  
  belongs_to :booking
  has_one :state
  belongs_to :user
  
end