module BookingsHelper
  
  def add_status_link(name)
    link_to_function name do |page|
      page.insert_html :bottom, :booking_statuses, :partial => 'booking_status', :object => BookingStatus.new
    end
  end
  
end
