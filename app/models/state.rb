class State < ActiveRecord::Base
  
  has_many :booking_statuses
  has_many :bookings, :through  => :booking_statuses
  
end